; ModuleID = 'github.com/goplus/llgo/cl/_testpull/complex'
source_filename = "github.com/goplus/llgo/cl/_testpull/complex"

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
%"github.com/goplus/llgo/async.Poll[int]" = type { i1, i64 }
%"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = type { i8, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/async.AsyncFuture[int]" = type { { ptr, ptr }, i1, i1, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/async.Context" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = type { i8, i64, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = type { i8, i64, i64, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = type { i8, i64, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = type { i8, i64, i64, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = type { i8, i64, i64, i64, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = type { i8, i64, i64, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = type { i8, i64, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = type { i8, i64, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = type { i8, i64, i64, i64, i64, i64, i64, ptr, ptr }

@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -250122641, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 27 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll" }] }, align 8
@0 = private unnamed_addr constant [27 x i8] c"complex.ChainedAwaits$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 1945761659, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 27 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$YwKELuODsDtpWaH4VFTO4pom7369lJJQKKq_cfDdRbA$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [5 x i8] c"state", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr @"*_llgo_int8" }, align 8
@2 = private unnamed_addr constant [4 x i8] c"int8", align 1
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@3 = private unnamed_addr constant [6 x i8] c"param0", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"*_llgo_int" }, align 8
@4 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@5 = private unnamed_addr constant [4 x i8] c"sub0", align 1
@"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 964362133, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll", ptr @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll" }] }, align 8
@6 = private unnamed_addr constant [22 x i8] c"async.AsyncFuture[int]", align 1
@"_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 0, i32 1769159236, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@7 = private unnamed_addr constant [28 x i8] c"github.com/goplus/llgo/async", align 1
@8 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1213993089, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 87 }, ptr @"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields", i64 2, i64 2 } }, align 8
@9 = private unnamed_addr constant [87 x i8] c"struct { $f func(struct { $f func(int); $data unsafe.Pointer }); $data unsafe.Pointer }", align 1
@"*_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1666834553, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 87 }, ptr null }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74" }, align 8
@10 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2009615728, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 51 }, ptr @"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@11 = private unnamed_addr constant [51 x i8] c"func(struct { $f func(int); $data unsafe.Pointer })", align 1
@"*_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1512208703, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 51 }, ptr null }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY" }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1556934939, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 45 }, ptr @"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [45 x i8] c"struct { $f func(int); $data unsafe.Pointer }", align 1
@"*_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 364872269, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 45 }, ptr null }, ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@13 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@14 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@15 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_closure$f4lT9Pf83FhVhIyEqWUmFnD73c5sfkHKv_O0vBIMGtM"], align 8
@"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr @"_llgo_func$lQx49kWFbT0FZ8OSeOPqCs05G8gC5IEC_g_JMrdojCY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@16 = private unnamed_addr constant [7 x i8] c"started", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr @"*_llgo_bool" }, align 8
@17 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@18 = private unnamed_addr constant [5 x i8] c"ready", align 1
@19 = private unnamed_addr constant [5 x i8] c"value", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$7rDZKmB42_Py8edMKa5F7f4jLaT74tduVmwgA_IDf00$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr @"_llgo_closure$GJlcV766GMBE3IJ_9tkJ4Ppu8coeRlXki_OTyWvNI74", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_bool, i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@20 = private unnamed_addr constant [5 x i8] c"Await", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@21 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@22 = private unnamed_addr constant [4 x i8] c"Poll", align 1
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655717054, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 36 }, ptr @"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out", i64 1, i64 1 } }, align 8
@23 = private unnamed_addr constant [36 x i8] c"func(*async.Context) async.Poll[int]", align 1
@"*_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -62824656, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 36 }, ptr null }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }, align 8
@"*_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -808118033, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Context" }, align 8
@24 = private unnamed_addr constant [13 x i8] c"async.Context", align 1
@"_llgo_github.com/goplus/llgo/async.Context" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 29200871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Context" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/async.Context" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@25 = private unnamed_addr constant [5 x i8] c"Waker", align 1
@"_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2133419533, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/async.Waker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods", i64 1, i64 1 } }, align 8
@26 = private unnamed_addr constant [11 x i8] c"async.Waker", align 1
@"*_llgo_github.com/goplus/llgo/async.Waker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 504672852, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Waker" }, align 8
@27 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testpull/complex", align 1
@28 = private unnamed_addr constant [4 x i8] c"Wake", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@29 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$5udCHZ6xl-fBE2F9apjWV2qrxMb4_QYfwdoy0QD1D8c$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 4 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@"_llgo_struct$RRVsRJkYHdoR-mI2_FrzGPRXwNM5u9bW2w1hN455sNs$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/async.Waker", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$in" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/async.Context"], align 8
@"_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 801809575, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$L-bv4mYIsagI76ZXTH6q8eUj7E6Age9HPTzroAJOrXs$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.Poll[int].IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.Poll[int].Value" }] }, align 8
@30 = private unnamed_addr constant [15 x i8] c"async.Poll[int]", align 1
@"*_llgo_github.com/goplus/llgo/async.Poll[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -920093333, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 28 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady", ptr @"github.com/goplus/llgo/async.(*Poll[int]).IsReady" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value", ptr @"github.com/goplus/llgo/async.(*Poll[int]).Value" }] }, align 8
@31 = private unnamed_addr constant [7 x i8] c"IsReady", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@32 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@33 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$L-bv4mYIsagI76ZXTH6q8eUj7E6Age9HPTzroAJOrXs$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr @_llgo_bool, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 5 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/async.Poll[int]"], align 8
@34 = private unnamed_addr constant [4 x i8] c"sub1", align 1
@35 = private unnamed_addr constant [4 x i8] c"sub2", align 1
@36 = private unnamed_addr constant [4 x i8] c"sub3", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$YwKELuODsDtpWaH4VFTO4pom7369lJJQKKq_cfDdRbA$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 968294533, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 50 }, ptr @"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@37 = private unnamed_addr constant [50 x i8] c"interface { Poll(*async.Context) async.Poll[int] }", align 1
@"*_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1655281012, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 50 }, ptr null }, ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0" }, align 8
@"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss" }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -967649622, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll" }] }, align 8
@38 = private unnamed_addr constant [28 x i8] c"complex.ClosureCapture$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 1492750809, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$p1Q8rnDyGEBVYnfYNpRL8HtMrTW2O9jphrxyD8fYNpQ$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$p1Q8rnDyGEBVYnfYNpRL8HtMrTW2O9jphrxyD8fYNpQ$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1236880448, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*ConditionalChain$State).Poll" }] }, align 8
@39 = private unnamed_addr constant [30 x i8] c"complex.ConditionalChain$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -1742836718, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$VS4E2vUwf5nU86RM66ndPb7BmRLMLWKGGrH8u2WmduA$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@40 = private unnamed_addr constant [4 x i8] c"var0", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$VS4E2vUwf5nU86RM66ndPb7BmRLMLWKGGrH8u2WmduA$fields" = weak_odr constant [6 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1433977907, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 28 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*DeferWithAwait$State).Poll" }] }, align 8
@41 = private unnamed_addr constant [28 x i8] c"complex.DeferWithAwait$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -1783038012, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 28 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$ZLKh2j7mREz0lYYlIxro4VhlCA0PdkaxMHUnJUMZV58$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 934108082, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/async.Future[int]" }, align 8
@42 = private unnamed_addr constant [17 x i8] c"async.Future[int]", align 1
@"_llgo_github.com/goplus/llgo/async.Future[int]" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1503177044, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$xltHQulLTi5yBONGGPc9JOa_OlS7yTXwogmOn3sHdV0$imethods", i64 1, i64 1 } }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$ZLKh2j7mREz0lYYlIxro4VhlCA0PdkaxMHUnJUMZV58$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.Future[int]", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -712734537, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 31 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopBreakContinue$State).Poll" }] }, align 8
@43 = private unnamed_addr constant [31 x i8] c"complex.LoopBreakContinue$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 32, i64 32, i32 1831828838, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 31 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$wmsgAc7lSg4lNI_eASDX8YtcKHdwuXrEP4yk16RSbac$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$wmsgAc7lSg4lNI_eASDX8YtcKHdwuXrEP4yk16RSbac$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1661116055, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 33 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*LoopWithAccumulator$State).Poll" }] }, align 8
@44 = private unnamed_addr constant [33 x i8] c"complex.LoopWithAccumulator$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 355462596, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 33 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$1LSwUJAHu8LZnNL86KY35uNSy2nd2Hw1xr4YEa_Uk3c$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@45 = private unnamed_addr constant [4 x i8] c"var1", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$1LSwUJAHu8LZnNL86KY35uNSy2nd2Hw1xr4YEa_Uk3c$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1782583083, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 33 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*MultipleReturnPaths$State).Poll" }] }, align 8
@46 = private unnamed_addr constant [33 x i8] c"complex.MultipleReturnPaths$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 48, i32 -1753379399, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 33 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$VS4E2vUwf5nU86RM66ndPb7BmRLMLWKGGrH8u2WmduA$fields", i64 6, i64 6 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1311936890, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 30 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*NestedConditions$State).Poll" }] }, align 8
@47 = private unnamed_addr constant [30 x i8] c"complex.NestedConditions$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 56, i32 1405840390, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 30 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$VcgsbrIDJiSM5aBfRfTXMvRD9AzWXiQCRe9O9DmcHAE$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"github.com/goplus/llgo/cl/_testpull/complex.struct$VcgsbrIDJiSM5aBfRfTXMvRD9AzWXiQCRe9O9DmcHAE$fields" = weak_odr constant [7 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1711137240, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*SwitchWithFallthrough$State).Poll" }] }, align 8
@48 = private unnamed_addr constant [35 x i8] c"complex.SwitchWithFallthrough$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 56, i32 184084660, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$VcgsbrIDJiSM5aBfRfTXMvRD9AzWXiQCRe9O9DmcHAE$fields", i64 7, i64 7 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 604964660, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 4 }, ptr @"_llgo_func$LMNkssIwRQ5S3KjblvOITtLXg_JEzMyFVFUPoZcikss", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll", ptr @"github.com/goplus/llgo/cl/_testpull/complex.(*TwoLoops$State).Poll" }] }, align 8
@49 = private unnamed_addr constant [22 x i8] c"complex.TwoLoops$State", align 1
@"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 -1200167787, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testpull/complex.struct$vCTgOHna7NIeEm1zIDBv1dfaW_NeipZjY4e5NHUOt6Y$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@50 = private unnamed_addr constant [4 x i8] c"var2", align 1
@51 = private unnamed_addr constant [4 x i8] c"var3", align 1
@52 = private unnamed_addr constant [4 x i8] c"var4", align 1
@"github.com/goplus/llgo/cl/_testpull/complex.struct$vCTgOHna7NIeEm1zIDBv1dfaW_NeipZjY4e5NHUOt6Y$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @_llgo_int8, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 4 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 4 }, ptr @_llgo_int, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 4 }, ptr @_llgo_int, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_int, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @_llgo_int, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/async.AsyncFuture[int]", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testpull/complex.init$guard" = global i1 false, align 1
@53 = private unnamed_addr constant [45 x i8] c"Await() should be transformed by the compiler", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 6 }, ptr @"*_llgo_string" }, align 8
@54 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ChainedAwaits$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_11, label %_llgo_12

_llgo_3:                                          ; preds = %_llgo_13, %_llgo_0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_15, label %_llgo_16

_llgo_4:                                          ; preds = %_llgo_17, %_llgo_0
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_19, label %_llgo_20

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_0
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %26, i32 0, i32 0
  store i1 true, ptr %27, align 1
  %28 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %26, i32 0, i32 1
  store i64 0, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %26, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %29

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_1
  %30 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %5)
  store ptr %30, ptr %6, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_1
  %31 = load ptr, ptr %6, align 8
  %32 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %31, ptr %1)
  %33 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %32, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %33, i32 0, i32 0
  %35 = load i1, ptr %34, align 1
  br i1 %35, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %33, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %38, align 1
  br label %_llgo_2

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_2
  %39 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %30)
  %40 = mul i64 %39, 2
  %41 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %40)
  store ptr %41, ptr %11, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_2
  %42 = load ptr, ptr %11, align 8
  %43 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %42, ptr %1)
  %44 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %43, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 0
  %46 = load i1, ptr %45, align 1
  br i1 %46, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %47 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %44, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %49, align 1
  br label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; preds = %_llgo_3
  %50 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %41)
  %51 = add i64 %50, 10
  %52 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %51)
  store ptr %52, ptr %16, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_3
  %53 = load ptr, ptr %16, align 8
  %54 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %53, ptr %1)
  %55 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %54, ptr %55, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %55, i32 0, i32 0
  %57 = load i1, ptr %56, align 1
  br i1 %57, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %58 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %55, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %60, align 1
  br label %_llgo_4

_llgo_18:                                         ; preds = %_llgo_16
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_19:                                         ; preds = %_llgo_4
  %61 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %52)
  %62 = sub i64 %61, 5
  %63 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %62)
  store ptr %63, ptr %21, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_4
  %64 = load ptr, ptr %21, align 8
  %65 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %64, ptr %1)
  %66 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %65, ptr %66, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %66, i32 0, i32 0
  %68 = load i1, ptr %67, align 1
  br i1 %68, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %66, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %71, align 1
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_20
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

define linkonce i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 45 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ChainedAwaits$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce i1 @"github.com/goplus/llgo/async.Poll[int].IsReady"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = load i1, ptr %2, align 1
  ret i1 %3
}

define linkonce i64 @"github.com/goplus/llgo/async.Poll[int].Value"(%"github.com/goplus/llgo/async.Poll[int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/async.Poll[int]" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

define linkonce i1 @"github.com/goplus/llgo/async.(*Poll[int]).IsReady"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  %2 = call i1 @"github.com/goplus/llgo/async.Poll[int].IsReady"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i1 %2
}

define linkonce i64 @"github.com/goplus/llgo/async.(*Poll[int]).Value"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  %2 = call i64 @"github.com/goplus/llgo/async.Poll[int].Value"(%"github.com/goplus/llgo/async.Poll[int]" %1)
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

define %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/cl/_testpull/complex.(*ClosureCapture$State).Poll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_4 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %16, i32 0, i32 0
  store i1 true, ptr %17, align 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %16, i32 0, i32 1
  store i64 0, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %16, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %19

_llgo_4:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_5:                                          ; preds = %_llgo_1
  %20 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %5)
  store ptr %20, ptr %6, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_1
  %21 = load ptr, ptr %6, align 8
  %22 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %21, ptr %1)
  %23 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %22, ptr %23, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %23, i32 0, i32 0
  %25 = load i1, ptr %24, align 1
  br i1 %25, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %23, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %28, align 1
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %29 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %20)
  %30 = mul i64 %29, 2
  %31 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %30)
  store ptr %31, ptr %11, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %32 = load ptr, ptr %11, align 8
  %33 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %32, ptr %1)
  %34 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %33, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 0
  %36 = load i1, ptr %35, align 1
  br i1 %36, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %37 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %34, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %39, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ClosureCapture$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_8 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_9, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_11, %_llgo_0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %20, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_13, label %_llgo_14

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_0
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %31 = load i64, ptr %30, align 4
  %32 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %32, i32 0, i32 0
  store i1 true, ptr %33, align 1
  %34 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %32, i32 0, i32 1
  store i64 0, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %32, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %35

_llgo_6:                                          ; preds = %_llgo_0
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_17, label %_llgo_18

_llgo_7:                                          ; preds = %_llgo_19, %_llgo_0
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 2
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %47, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_8:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_2
  %48 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %12)
  store ptr %48, ptr %13, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_2
  %49 = load ptr, ptr %13, align 8
  %50 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %49, ptr %1)
  %51 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %50, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %51, i32 0, i32 0
  %53 = load i1, ptr %52, align 1
  br i1 %53, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %51, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %56, align 1
  br label %_llgo_3

_llgo_12:                                         ; preds = %_llgo_10
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; preds = %_llgo_4
  %57 = phi i64 
  %58 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %57)
  store ptr %58, ptr %25, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_4
  %59 = load ptr, ptr %25, align 8
  %60 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %59, ptr %1)
  %61 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %60, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %61, i32 0, i32 0
  %63 = load i1, ptr %62, align 1
  br i1 %63, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %64 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %61, i32 0, i32 1
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %66, align 1
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_17:                                         ; preds = %_llgo_6
  %67 = sub i64 0, %39
  %68 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %67)
  store ptr %68, ptr %40, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_6
  %69 = load ptr, ptr %40, align 8
  %70 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %69, ptr %1)
  %71 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %70, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %71, i32 0, i32 0
  %73 = load i1, ptr %72, align 1
  br i1 %73, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %74 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %71, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %76, align 1
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_18
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.ConditionalChain$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_5 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_6, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_8, %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_10, label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_12, %_llgo_0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %22, i32 0, i32 0
  store i1 true, ptr %23, align 1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %22, i32 0, i32 1
  store i64 0, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %22, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %25

_llgo_4:                                          ; preds = %_llgo_0
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 0
  store i1 true, ptr %31, align 1
  %32 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %30, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %33

_llgo_5:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_6:                                          ; preds = %_llgo_1
  %34 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %5)
  store ptr %34, ptr %8, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_1
  %35 = load ptr, ptr %8, align 8
  %36 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %35, ptr %1)
  %37 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %36, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 0
  %39 = load i1, ptr %38, align 1
  br i1 %39, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %40 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %42, align 1
  br label %_llgo_2

_llgo_9:                                          ; preds = %_llgo_7
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_2
  %43 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %34)
  %44 = add i64 %43, 10
  %45 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %44)
  store ptr %45, ptr %15, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_2
  %46 = load ptr, ptr %15, align 8
  %47 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %46, ptr %1)
  %48 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %47, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %48, i32 0, i32 0
  %50 = load i1, ptr %49, align 1
  br i1 %50, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %51 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %48, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %53, align 1
  br label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 2
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.DeferWithAwait$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_9 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %13, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %18, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %23, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  %28 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %28, i32 0, i32 0
  store i1 true, ptr %29, align 1
  %30 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %28, i32 0, i32 1
  store i64 0, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %28, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %31

_llgo_6:                                          ; preds = %_llgo_0
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %36, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_10, label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_12, %_llgo_0
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %48, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_9:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_10:                                         ; preds = %_llgo_7
  %49 = phi i64 
  %50 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %49)
  store ptr %50, ptr %41, align 8
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_7
  %51 = load ptr, ptr %41, align 8
  %52 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %51, ptr %1)
  %53 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %52, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %53, i32 0, i32 0
  %55 = load i1, ptr %54, align 1
  br i1 %55, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  %56 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %53, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %58, align 1
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopBreakContinue$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_6 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %10, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %17, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %_llgo_7, label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_0
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %33, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 2
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 3
  %39 = load i64, ptr %38, align 4
  %40 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %40, i32 0, i32 0
  store i1 true, ptr %41, align 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %40, i32 0, i32 1
  store i64 0, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %40, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %43

_llgo_6:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_7:                                          ; preds = %_llgo_3
  %44 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %23)
  store ptr %44, ptr %24, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_3
  %45 = load ptr, ptr %24, align 8
  %46 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %45, ptr %1)
  %47 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %46, ptr %47, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %47, i32 0, i32 0
  %49 = load i1, ptr %48, align 1
  br i1 %49, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %47, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %52, align 1
  br label %_llgo_4

_llgo_10:                                         ; preds = %_llgo_8
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.LoopWithAccumulator$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_11 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %20, i32 0, i32 0
  store i1 true, ptr %21, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %20, i32 0, i32 1
  store i64 0, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %20, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %23

_llgo_4:                                          ; preds = %_llgo_0
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %28, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %33, i32 0, i32 0
  store i1 true, ptr %34, align 1
  %35 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %33, i32 0, i32 1
  store i64 0, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %33, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %36

_llgo_6:                                          ; preds = %_llgo_0
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_16, label %_llgo_17

_llgo_7:                                          ; preds = %_llgo_18, %_llgo_0
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %48, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %52 = load i64, ptr %51, align 4
  %53 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %53, i32 0, i32 0
  store i1 true, ptr %54, align 1
  %55 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %53, i32 0, i32 1
  store i64 0, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %53, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %56

_llgo_9:                                          ; preds = %_llgo_0
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %_llgo_20, label %_llgo_21

_llgo_10:                                         ; preds = %_llgo_22, %_llgo_0
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 1
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 2
  %67 = load i64, ptr %66, align 4
  %68 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 0
  store i1 true, ptr %69, align 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 1
  store i64 0, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %68, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %71

_llgo_11:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  %72 = sub i64 0, %12
  %73 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %72)
  store ptr %73, ptr %13, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %74 = load ptr, ptr %13, align 8
  %75 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %74, ptr %1)
  %76 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %75, ptr %76, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %76, i32 0, i32 0
  %78 = load i1, ptr %77, align 1
  br i1 %78, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %79 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %76, i32 0, i32 1
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %81, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_16:                                         ; preds = %_llgo_6
  %82 = mul i64 %40, 2
  %83 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %82)
  store ptr %83, ptr %41, align 8
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_6
  %84 = load ptr, ptr %41, align 8
  %85 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %84, ptr %1)
  %86 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %85, ptr %86, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %86, i32 0, i32 0
  %88 = load i1, ptr %87, align 1
  br i1 %88, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %89 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %86, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %91, align 1
  br label %_llgo_7

_llgo_19:                                         ; preds = %_llgo_17
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_20:                                         ; preds = %_llgo_9
  %92 = call i64 @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Await"(ptr %83)
  %93 = add i64 %92, 50
  %94 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %93)
  store ptr %94, ptr %61, align 8
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_9
  %95 = load ptr, ptr %61, align 8
  %96 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %95, ptr %1)
  %97 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %96, ptr %97, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %97, i32 0, i32 0
  %99 = load i1, ptr %98, align 1
  br i1 %99, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %100 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %97, i32 0, i32 1
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %102, align 1
  br label %_llgo_10

_llgo_23:                                         ; preds = %_llgo_21
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.MultipleReturnPaths$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_11 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_12, label %_llgo_13

_llgo_3:                                          ; preds = %_llgo_14, %_llgo_0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %20, align 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_0
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %24 = load i64, ptr %23, align 4
  %25 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %25, i32 0, i32 0
  store i1 true, ptr %26, align 1
  %27 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %25, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %28

_llgo_5:                                          ; preds = %_llgo_0
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_18, %_llgo_0
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %40, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_20, label %_llgo_21

_llgo_8:                                          ; preds = %_llgo_22, %_llgo_0
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %52, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %_llgo_24, label %_llgo_25

_llgo_10:                                         ; preds = %_llgo_26, %_llgo_0
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %64, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_12:                                         ; preds = %_llgo_2
  %65 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %10)
  store ptr %65, ptr %13, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_2
  %66 = load ptr, ptr %13, align 8
  %67 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %66, ptr %1)
  %68 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %67, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 0
  %70 = load i1, ptr %69, align 1
  br i1 %70, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %71 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %68, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 2
  store i64 %72, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %74, align 1
  br label %_llgo_3

_llgo_15:                                         ; preds = %_llgo_13
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_16:                                         ; preds = %_llgo_5
  %75 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  store ptr %75, ptr %33, align 8
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_5
  %76 = load ptr, ptr %33, align 8
  %77 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %76, ptr %1)
  %78 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %77, ptr %78, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %78, i32 0, i32 0
  %80 = load i1, ptr %79, align 1
  br i1 %80, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %81 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %78, i32 0, i32 1
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %83, align 1
  br label %_llgo_6

_llgo_19:                                         ; preds = %_llgo_17
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_20:                                         ; preds = %_llgo_7
  %84 = mul i64 %44, 2
  %85 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %84)
  store ptr %85, ptr %45, align 8
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_7
  %86 = load ptr, ptr %45, align 8
  %87 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %86, ptr %1)
  %88 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %87, ptr %88, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %88, i32 0, i32 0
  %90 = load i1, ptr %89, align 1
  br i1 %90, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %91 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %88, i32 0, i32 1
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %93, align 1
  br label %_llgo_8

_llgo_23:                                         ; preds = %_llgo_21
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_24:                                         ; preds = %_llgo_9
  %94 = add i64 %56, 5
  %95 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %94)
  store ptr %95, ptr %57, align 8
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_9
  %96 = load ptr, ptr %57, align 8
  %97 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %96, ptr %1)
  %98 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %97, ptr %98, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %98, i32 0, i32 0
  %100 = load i1, ptr %99, align 1
  br i1 %100, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %101 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %98, i32 0, i32 1
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %103, align 1
  br label %_llgo_10

_llgo_27:                                         ; preds = %_llgo_25
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.NestedConditions$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_13 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
    i8 9, label %_llgo_10
    i8 10, label %_llgo_11
    i8 11, label %_llgo_12
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %8, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 4
  %13 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %13, i32 0, i32 0
  store i1 true, ptr %14, align 1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %13, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %16

_llgo_3:                                          ; preds = %_llgo_0
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_4:                                          ; preds = %_llgo_16, %_llgo_0
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %28, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_18, label %_llgo_19

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_0
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %40, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %45, align 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_0
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %_llgo_22, label %_llgo_23

_llgo_9:                                          ; preds = %_llgo_24, %_llgo_0
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 9, ptr %57, align 1
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_0
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 10, ptr %62, align 1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_0
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_26, label %_llgo_27

_llgo_12:                                         ; preds = %_llgo_28, %_llgo_0
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 1
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 2
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 12, ptr %74, align 1
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_13:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_14:                                         ; preds = %_llgo_3
  %75 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 0)
  store ptr %75, ptr %21, align 8
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_3
  %76 = load ptr, ptr %21, align 8
  %77 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %76, ptr %1)
  %78 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %77, ptr %78, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %78, i32 0, i32 0
  %80 = load i1, ptr %79, align 1
  br i1 %80, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %81 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %78, i32 0, i32 1
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %83, align 1
  br label %_llgo_4

_llgo_17:                                         ; preds = %_llgo_15
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_18:                                         ; preds = %_llgo_5
  %84 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 10)
  store ptr %84, ptr %33, align 8
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_5
  %85 = load ptr, ptr %33, align 8
  %86 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %85, ptr %1)
  %87 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %86, ptr %87, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %87, i32 0, i32 0
  %89 = load i1, ptr %88, align 1
  br i1 %89, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %90 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %87, i32 0, i32 1
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %92, align 1
  br label %_llgo_6

_llgo_21:                                         ; preds = %_llgo_19
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_22:                                         ; preds = %_llgo_8
  %93 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 20)
  store ptr %93, ptr %50, align 8
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_8
  %94 = load ptr, ptr %50, align 8
  %95 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %94, ptr %1)
  %96 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %95, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %96, i32 0, i32 0
  %98 = load i1, ptr %97, align 1
  br i1 %98, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %99 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %96, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %101, align 1
  br label %_llgo_9

_llgo_25:                                         ; preds = %_llgo_23
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_26:                                         ; preds = %_llgo_11
  %102 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 100)
  store ptr %102, ptr %67, align 8
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_11
  %103 = load ptr, ptr %67, align 8
  %104 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %103, ptr %1)
  %105 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %104, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %105, i32 0, i32 0
  %107 = load i1, ptr %106, align 1
  br i1 %107, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %108 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %105, i32 0, i32 1
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %0, i32 0, i32 0
  store i8 11, ptr %110, align 1
  br label %_llgo_12

_llgo_29:                                         ; preds = %_llgo_27
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 4
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 5
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.SwitchWithFallthrough$State", ptr %1, i32 0, i32 6
  store ptr null, ptr %8, align 8
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
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %_llgo_10 [
    i8 0, label %_llgo_1
    i8 1, label %_llgo_2
    i8 2, label %_llgo_3
    i8 3, label %_llgo_4
    i8 4, label %_llgo_5
    i8 5, label %_llgo_6
    i8 6, label %_llgo_7
    i8 7, label %_llgo_8
    i8 8, label %_llgo_9
  ]

_llgo_1:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 1, ptr %16, align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 2, ptr %29, align 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_11, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_13, %_llgo_0
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 4, ptr %57, align 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %63 = load i64, ptr %62, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 5, ptr %70, align 1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %82 = load i64, ptr %81, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 6, ptr %83, align 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %_llgo_15, label %_llgo_16

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_0
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %110 = load i64, ptr %109, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 8, ptr %111, align 1
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 2
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 3
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 4
  %119 = load i64, ptr %118, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 5
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 6
  %123 = load i64, ptr %122, align 4
  %124 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %124, i32 0, i32 0
  store i1 true, ptr %125, align 1
  %126 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %124, i32 0, i32 1
  store i64 0, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %124, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %127

_llgo_10:                                         ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_11:                                         ; preds = %_llgo_3
  %128 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %37)
  store ptr %128, ptr %42, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_3
  %129 = load ptr, ptr %42, align 8
  %130 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %129, ptr %1)
  %131 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %130, ptr %131, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %131, i32 0, i32 0
  %133 = load i1, ptr %132, align 1
  br i1 %133, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %134 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %131, i32 0, i32 1
  %135 = load i64, ptr %134, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 3, ptr %136, align 1
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer

_llgo_15:                                         ; preds = %_llgo_7
  %137 = mul i64 %95, 2
  %138 = call ptr @"github.com/goplus/llgo/cl/_testpull/complex.Step"(i64 %137)
  store ptr %138, ptr %96, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_7
  %139 = load ptr, ptr %96, align 8
  %140 = call %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.(*AsyncFuture[int]).Poll"(ptr %139, ptr %1)
  %141 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  store %"github.com/goplus/llgo/async.Poll[int]" %140, ptr %141, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %141, i32 0, i32 0
  %143 = load i1, ptr %142, align 1
  br i1 %143, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %144 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %141, i32 0, i32 1
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %0, i32 0, i32 0
  store i8 7, ptr %146, align 1
  br label %_llgo_8

_llgo_18:                                         ; preds = %_llgo_16
  ret %"github.com/goplus/llgo/async.Poll[int]" zeroinitializer
}

define ptr @"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$Concrete"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 1
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 3
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 4
  store i64 0, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 5
  store i64 0, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 6
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 7
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testpull/complex.TwoLoops$State", ptr %1, i32 0, i32 8
  store ptr null, ptr %10, align 8
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
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %1, i32 0, i32 1
  store i1 true, ptr %2, align 1
  store i64 %0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %1, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %4
}

define linkonce %"github.com/goplus/llgo/async.Poll[int]" @"github.com/goplus/llgo/async.Pending[int]"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/async.Poll[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/async.Poll[int]", ptr %0, i32 0, i32 0
  store i1 false, ptr %1, align 1
  %2 = load %"github.com/goplus/llgo/async.Poll[int]", ptr %0, align 4
  ret %"github.com/goplus/llgo/async.Poll[int]" %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/async.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
