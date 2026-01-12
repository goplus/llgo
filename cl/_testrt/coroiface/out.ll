; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coroiface'
source_filename = "github.com/goplus/llgo/cl/_testrt/coroiface"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" = type { i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" = type { i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" = type { i64 }

@"github.com/goplus/llgo/cl/_testrt/coroiface.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [39 x i8] c"AsyncDelegator.Delegate: calling worker", align 1
@1 = private unnamed_addr constant [40 x i8] c"AsyncDelegator.Delegate: worker returned", align 1
@2 = private unnamed_addr constant [32 x i8] c"AsyncWorker.Work: start, value =", align 1
@3 = private unnamed_addr constant [32 x i8] c"AsyncWorker.Work: done, result =", align 1
@4 = private unnamed_addr constant [34 x i8] c"AsyncWorkerFactory.Create: value =", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 634486221, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro" }] }, align 8
@5 = private unnamed_addr constant [16 x i8] c"main.AsyncWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 911676830, i8 13, i8 8, i8 8, i8 57, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testrt/coroiface", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@9 = private unnamed_addr constant [4 x i8] c"Work", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1090036849, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 24 }, ptr @"*_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA$imethods", i64 1, i64 1 } }, align 8
@11 = private unnamed_addr constant [24 x i8] c"interface { Work() int }", align 1
@"*_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -104529525, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 24 }, ptr null }, ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" }, align 8
@"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@12 = private unnamed_addr constant [16 x i8] c"FullWorker.Name:", align 1
@13 = private unnamed_addr constant [23 x i8] c"FullWorker.Process: x =", align 1
@14 = private unnamed_addr constant [24 x i8] c"FullWorker.Work: value =", align 1
@15 = private unnamed_addr constant [34 x i8] c"StatefulWorker.Reset: resetting to", align 1
@16 = private unnamed_addr constant [30 x i8] c"StatefulWorker.Work: current =", align 1
@17 = private unnamed_addr constant [24 x i8] c"SyncWorker.Work: value =", align 1
@18 = private unnamed_addr constant [33 x i8] c"SyncWorkerFactory.Create: value =", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -930979729, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro" }] }, align 8
@19 = private unnamed_addr constant [15 x i8] c"main.SyncWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 50163103, i8 13, i8 8, i8 8, i8 57, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@20 = private unnamed_addr constant [16 x i8] c"asyncCallWorker:", align 1
@21 = private unnamed_addr constant [25 x i8] c"asyncCallWorker: result =", align 1
@22 = private unnamed_addr constant [26 x i8] c"asyncProcessWorkers: start", align 1
@23 = private unnamed_addr constant [27 x i8] c"asyncProcessWorkers: worker", align 1
@24 = private unnamed_addr constant [28 x i8] c"asyncProcessWorkers: total =", align 1
@25 = private unnamed_addr constant [32 x i8] c"asyncTestMethodExpression: start", align 1
@26 = private unnamed_addr constant [40 x i8] c"asyncTestMethodExpression: calling thunk", align 1
@27 = private unnamed_addr constant [35 x i8] c"asyncTestMethodExpression: result =", align 1
@28 = private unnamed_addr constant [27 x i8] c"asyncTestMethodValue: start", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -795757320, i8 4, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA$imethods", i64 1, i64 1 } }, align 8
@29 = private unnamed_addr constant [11 x i8] c"main.Worker", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2018866141, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" }, align 8
@30 = private unnamed_addr constant [126 x i8] c"type assertion github.com/goplus/llgo/cl/_testrt/coroiface.Worker -> github.com/goplus/llgo/cl/_testrt/coroiface.Worker failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"*_llgo_string" }, align 8
@31 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@32 = private unnamed_addr constant [42 x i8] c"asyncTestMethodValue: calling method value", align 1
@33 = private unnamed_addr constant [30 x i8] c"asyncTestMethodValue: result =", align 1
@34 = private unnamed_addr constant [11 x i8] c"callWorker:", align 1
@35 = private unnamed_addr constant [20 x i8] c"callWorker: result =", align 1
@36 = private unnamed_addr constant [60 x i8] c"=== Test 1: Sync worker through interface (sync context) ===", align 1
@37 = private unnamed_addr constant [11 x i8] c"sync worker", align 1
@38 = private unnamed_addr constant [26 x i8] c"main: sync worker result =", align 1
@39 = private unnamed_addr constant [62 x i8] c"\0A=== Test 2: Async worker through interface (sync context) ===", align 1
@40 = private unnamed_addr constant [12 x i8] c"async worker", align 1
@41 = private unnamed_addr constant [27 x i8] c"main: async worker result =", align 1
@42 = private unnamed_addr constant [62 x i8] c"\0A=== Test 3: Sync worker through interface (async context) ===", align 1
@43 = private unnamed_addr constant [17 x i8] c"sync worker async", align 1
@44 = private unnamed_addr constant [63 x i8] c"\0A=== Test 4: Async worker through interface (async context) ===", align 1
@45 = private unnamed_addr constant [18 x i8] c"async worker async", align 1
@46 = private unnamed_addr constant [46 x i8] c"\0A=== Test 5: Direct interface call in main ===", align 1
@47 = private unnamed_addr constant [31 x i8] c"main: direct interface result =", align 1
@48 = private unnamed_addr constant [35 x i8] c"\0A=== Test 6: Embedded interface ===", align 1
@49 = private unnamed_addr constant [4 x i8] c"full", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1537213357, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Name$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Name$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 7 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Process$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Process$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Work$coro" }] }, align 8
@50 = private unnamed_addr constant [15 x i8] c"main.FullWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 -1200776286, i8 5, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$MWK7nv11st0bfTXDO-wG0n_xJla9dCG8WB3il9kFSQY$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@51 = private unnamed_addr constant [4 x i8] c"name", align 1
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$MWK7nv11st0bfTXDO-wG0n_xJla9dCG8WB3il9kFSQY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@52 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@53 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@54 = private unnamed_addr constant [7 x i8] c"Process", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@55 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2080390876, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 57 }, ptr @"*_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc$imethods", i64 3, i64 3 } }, align 8
@56 = private unnamed_addr constant [57 x i8] c"interface { Name() string; Process(int) int; Work() int }", align 1
@"*_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1654459137, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 57 }, ptr null }, ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" }, align 8
@"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 7 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@57 = private unnamed_addr constant [30 x i8] c"main: FullWorker.Work result =", align 1
@58 = private unnamed_addr constant [30 x i8] c"main: FullWorker.Name result =", align 1
@59 = private unnamed_addr constant [33 x i8] c"main: FullWorker.Process result =", align 1
@60 = private unnamed_addr constant [54 x i8] c"\0A=== Test 7: Interface calls interface (delegator) ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1382948099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 8 }, ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate$coro" }] }, align 8
@61 = private unnamed_addr constant [19 x i8] c"main.AsyncDelegator", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1720108046, i8 13, i8 8, i8 8, i8 57, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$hjGifX37gtE7g6mZn4dR6Zkhm8CsB014ii6mHjg2baE$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@62 = private unnamed_addr constant [10 x i8] c"multiplier", align 1
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$hjGifX37gtE7g6mZn4dR6Zkhm8CsB014ii6mHjg2baE$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@63 = private unnamed_addr constant [8 x i8] c"Delegate", align 1
@"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1410930229, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 21 }, ptr @"*_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$out", i64 1, i64 1 } }, align 8
@64 = private unnamed_addr constant [21 x i8] c"func(main.Worker) int", align 1
@"*_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1652536018, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 21 }, ptr null }, ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" }, align 8
@"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker"], align 8
@"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 481589620, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 39 }, ptr @"*_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8$imethods", i64 1, i64 1 } }, align 8
@65 = private unnamed_addr constant [39 x i8] c"interface { Delegate(main.Worker) int }", align 1
@"*_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1016268504, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 39 }, ptr null }, ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" }, align 8
@"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 8 }, ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" }], align 8
@66 = private unnamed_addr constant [24 x i8] c"main: delegator result =", align 1
@67 = private unnamed_addr constant [54 x i8] c"\0A=== Test 8: Interface returns interface (factory) ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2076775541, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorkerFactory).Create$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorkerFactory).Create$coro" }] }, align 8
@68 = private unnamed_addr constant [23 x i8] c"main.AsyncWorkerFactory", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1781351252, i8 13, i8 1, i8 1, i8 25, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@69 = private unnamed_addr constant [6 x i8] c"Create", align 1
@"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 697108341, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 21 }, ptr @"*_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$out", i64 1, i64 1 } }, align 8
@70 = private unnamed_addr constant [21 x i8] c"func(int) main.Worker", align 1
@"*_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1940202750, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 21 }, ptr null }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" }, align 8
@"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker"], align 8
@"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1805914562, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 37 }, ptr @"*_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g$imethods", i64 1, i64 1 } }, align 8
@71 = private unnamed_addr constant [37 x i8] c"interface { Create(int) main.Worker }", align 1
@"*_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1800814497, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 37 }, ptr null }, ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" }, align 8
@"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" }], align 8
@72 = private unnamed_addr constant [37 x i8] c"main: factory created worker result =", align 1
@73 = private unnamed_addr constant [31 x i8] c"\0A=== Test 9: Type assertion ===", align 1
@74 = private unnamed_addr constant [33 x i8] c"\0A=== Test 10: Interface slice ===", align 1
@75 = private unnamed_addr constant [28 x i8] c"main: processWorkers total =", align 1
@76 = private unnamed_addr constant [47 x i8] c"\0A=== Test 11: Async process interface slice ===", align 1
@77 = private unnamed_addr constant [54 x i8] c"\0A=== Test 12: Resettable worker (nested embedding) ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -571733308, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Reset$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Reset$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Work$coro" }] }, align 8
@78 = private unnamed_addr constant [19 x i8] c"main.StatefulWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 2105620925, i8 13, i8 8, i8 8, i8 25, { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", i1 undef }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$2A9FcZwBDZ-qkFYkJUcjh0YCvSbHHHjp0rj_rMBv2tI$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@79 = private unnamed_addr constant [7 x i8] c"initial", align 1
@80 = private unnamed_addr constant [7 x i8] c"current", align 1
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$2A9FcZwBDZ-qkFYkJUcjh0YCvSbHHHjp0rj_rMBv2tI$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 7 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@81 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@82 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -327712991, i8 0, i8 8, i8 8, i8 20, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 33 }, ptr @"*_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU$imethods", i64 2, i64 2 } }, align 8
@83 = private unnamed_addr constant [33 x i8] c"interface { Reset(); Work() int }", align 1
@"*_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1621656103, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 33 }, ptr null }, ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" }, align 8
@"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@84 = private unnamed_addr constant [45 x i8] c"\0A=== Test 13: Method value (sync context) ===", align 1
@85 = private unnamed_addr constant [46 x i8] c"\0A=== Test 14: Method value (async context) ===", align 1
@86 = private unnamed_addr constant [30 x i8] c"\0A=== Test 15: Sync factory ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 351156054, i8 11, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorkerFactory).Create$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorkerFactory).Create$coro" }] }, align 8
@87 = private unnamed_addr constant [22 x i8] c"main.SyncWorkerFactory", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 1927264388, i8 13, i8 1, i8 1, i8 25, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@88 = private unnamed_addr constant [42 x i8] c"main: sync factory created worker result =", align 1
@89 = private unnamed_addr constant [57 x i8] c"\0A=== Test 16: Method expression ($thunk) sync context ===", align 1
@90 = private unnamed_addr constant [58 x i8] c"\0A=== Test 17: Method expression ($thunk) async context ===", align 1
@91 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@92 = private unnamed_addr constant [26 x i8] c"processWorkers: processing", align 1
@93 = private unnamed_addr constant [7 x i8] c"workers", align 1
@94 = private unnamed_addr constant [22 x i8] c"processWorkers: worker", align 1
@95 = private unnamed_addr constant [23 x i8] c"processWorkers: total =", align 1
@96 = private unnamed_addr constant [27 x i8] c"testMethodExpression: start", align 1
@97 = private unnamed_addr constant [49 x i8] c"testMethodExpression: calling thunk with receiver", align 1
@98 = private unnamed_addr constant [30 x i8] c"testMethodExpression: result =", align 1
@99 = private unnamed_addr constant [37 x i8] c"testMethodValue: getting method value", align 1
@100 = private unnamed_addr constant [37 x i8] c"testMethodValue: calling method value", align 1
@101 = private unnamed_addr constant [25 x i8] c"testMethodValue: result =", align 1
@102 = private unnamed_addr constant [32 x i8] c"testResettableWorker: first work", align 1
@103 = private unnamed_addr constant [31 x i8] c"testResettableWorker: result1 =", align 1
@104 = private unnamed_addr constant [33 x i8] c"testResettableWorker: second work", align 1
@105 = private unnamed_addr constant [31 x i8] c"testResettableWorker: result2 =", align 1
@106 = private unnamed_addr constant [27 x i8] c"testResettableWorker: reset", align 1
@107 = private unnamed_addr constant [38 x i8] c"testResettableWorker: work after reset", align 1
@108 = private unnamed_addr constant [31 x i8] c"testResettableWorker: result3 =", align 1
@109 = private unnamed_addr constant [24 x i8] c"testTypeAssertion: start", align 1
@110 = private unnamed_addr constant [43 x i8] c"testTypeAssertion: got AsyncWorker, value =", align 1
@111 = private unnamed_addr constant [39 x i8] c"testTypeAssertion: AsyncWorker result =", align 1
@112 = private unnamed_addr constant [42 x i8] c"testTypeAssertion: got SyncWorker, value =", align 1
@113 = private unnamed_addr constant [38 x i8] c"testTypeAssertion: SyncWorker result =", align 1

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 0
  %4 = getelementptr ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { ptr, ptr, i1 } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr, i1 } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr, i1 } %7, 1
  %9 = extractvalue { ptr, ptr, i1 } %7, 2
  %10 = extractvalue { ptr, ptr, i1 } %7, 0
  %11 = call ptr %10(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %11)
  %12 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %13 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  call void @llvm.coro.destroy(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %0, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  %17 = mul i64 %14, %16
  ret i64 %17
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate$coro"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_12, %_llgo_11, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_15, %_llgo_12, %_llgo_11, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_17, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 0
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = insertvalue { ptr, ptr, i1 } undef, ptr %18, 0
  %20 = insertvalue { ptr, ptr, i1 } %19, ptr %15, 1
  %21 = extractvalue { ptr, ptr, i1 } %20, 1
  %22 = extractvalue { ptr, ptr, i1 } %20, 2
  %23 = extractvalue { ptr, ptr, i1 } %20, 0
  %24 = call ptr %23(ptr %21)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_9
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %25, label %_llgo_15, label %_llgo_16

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_13, %_llgo_7
  %26 = phi i1 [ true, %_llgo_7 ], [ false, %_llgo_11 ], [ false, %_llgo_12 ]
  %27 = call i1 @llvm.coro.done(ptr %24)
  br i1 %27, label %_llgo_8, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  br i1 %26, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %28 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  %31 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %10)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_9

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_8
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_8
  %35 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  call void @llvm.coro.destroy(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %0, i32 0, i32 0
  %39 = load i64, ptr %38, align 4
  %40 = mul i64 %37, %39
  %41 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %40, ptr %41, align 4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %4, 3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %13 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = mul i64 %17, 3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorkerFactory).Create"(ptr %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %2, i32 0, i32 0
  store i64 %1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorkerFactory).Create$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %3 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %12 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %15, i32 0, i32 0
  store i64 %1, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %15, 1
  %20 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %20, align 8
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Name"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Name$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, align 8
  %2 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %9 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, ptr %9, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %3, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_1
  %15 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Process"(ptr %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Process$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = add i64 %16, %1
  %18 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %17, ptr %18, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Work"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %4, 4
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Work$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %13 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = mul i64 %17, 4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Reset"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  store i64 %4, ptr %5, align 4
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Reset$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %3, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %14 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_1
  %15 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %15)
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Work"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = add i64 %6, 10
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  store i64 %7, ptr %8, align 4
  ret i64 %4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Work$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %3, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %13 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = add i64 %19, 10
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  store i64 %20, ptr %21, align 4
  %22 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %17, ptr %22, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %4, 2
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = mul i64 %8, 2
  %10 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %3, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %3, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorkerFactory).Create"(ptr %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %2, i32 0, i32 0
  store i64 %1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %2, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorkerFactory).Create$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %3 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %6, i32 0, i32 0
  store i64 %1, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %6, 1
  %11 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, ptr %11, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %4, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %4, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %4 = getelementptr ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { ptr, ptr, i1 } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr, i1 } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr, i1 } %7, 1
  %9 = extractvalue { ptr, ptr, i1 } %7, 2
  %10 = extractvalue { ptr, ptr, i1 } %7, 0
  %11 = call ptr %10(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %11)
  %12 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %13 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  call void @llvm.coro.destroy(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %14
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %4, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_12, %_llgo_11, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_15, %_llgo_12, %_llgo_11, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_17, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = insertvalue { ptr, ptr, i1 } undef, ptr %18, 0
  %20 = insertvalue { ptr, ptr, i1 } %19, ptr %15, 1
  %21 = extractvalue { ptr, ptr, i1 } %20, 1
  %22 = extractvalue { ptr, ptr, i1 } %20, 2
  %23 = extractvalue { ptr, ptr, i1 } %20, 0
  %24 = call ptr %23(ptr %21)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_9
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %25, label %_llgo_15, label %_llgo_16

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_13, %_llgo_7
  %26 = phi i1 [ true, %_llgo_7 ], [ false, %_llgo_11 ], [ false, %_llgo_12 ]
  %27 = call i1 @llvm.coro.done(ptr %24)
  br i1 %27, label %_llgo_8, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  br i1 %26, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %28 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  %31 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %10)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_9

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_8
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_8
  %35 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  call void @llvm.coro.destroy(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %37, ptr %38, align 4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ 0, %_llgo_0 ], [ %26, %_llgo_2 ]
  %3 = phi i64 [ -1, %_llgo_0 ], [ %4, %_llgo_2 ]
  %4 = add i64 %3, 1
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %8 = icmp slt i64 %4, 0
  %9 = icmp sge i64 %4, %7
  %10 = or i1 %9, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, i64 %4
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr, i1 } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr, i1 } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr, i1 } %18, 1
  %20 = extractvalue { ptr, ptr, i1 } %18, 2
  %21 = extractvalue { ptr, ptr, i1 } %18, 0
  %22 = call ptr %21(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  %23 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  call void @llvm.coro.destroy(ptr %22)
  %26 = add i64 %2, %25
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %31)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_2:                                          ; preds = %_llgo_19, %_llgo_10
  %6 = phi i64 [ 0, %_llgo_10 ], [ %50, %_llgo_19 ]
  %7 = phi i64 [ -1, %_llgo_10 ], [ %8, %_llgo_19 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %36
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %12 = icmp slt i64 %8, 0
  %13 = icmp sge i64 %8, %11
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %10, i64 %8
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 0
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr, i1 } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr, i1 } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr, i1 } %22, 1
  %24 = extractvalue { ptr, ptr, i1 } %22, 2
  %25 = extractvalue { ptr, ptr, i1 } %22, 0
  %26 = call ptr %25(ptr %23)
  br label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %6, ptr %27, align 4
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %28 = call i64 @llvm.coro.size.i64()
  %29 = call ptr @malloc(i64 %28)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %30 = phi ptr [ null, %_llgo_0 ], [ %29, %_llgo_5 ]
  %31 = call ptr @llvm.coro.begin(token %3, ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_15, %_llgo_14, %_llgo_1
  %32 = call i1 @llvm.coro.end(ptr %31, i1 false, token none)
  ret ptr %31

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %33 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %33)
  %34 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %34, label %_llgo_7 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_20, %_llgo_8
  %35 = call ptr @llvm.coro.free(token %3, ptr %31)
  call void @free(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_1
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_11:                                         ; preds = %_llgo_12
  %37 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %26)
  br i1 %37, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_3
  %38 = phi i1 [ true, %_llgo_3 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %39 = call i1 @llvm.coro.done(ptr %26)
  br i1 %39, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %38, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %40 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %41, ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %26)
  %42 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %42, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_8
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %43 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr, i64 }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %31)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_7 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_8
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %46 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %46)
  br label %_llgo_8

_llgo_19:                                         ; preds = %_llgo_11
  %47 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %48 = getelementptr inbounds { ptr, i64 }, ptr %47, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  call void @llvm.coro.destroy(ptr %26)
  %50 = add i64 %6, %49
  br label %_llgo_2

_llgo_20:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  store i64 88, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$thunk"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %13, i32 0, i32 0
  store i64 88, ptr %14, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$thunk"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %4 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %3, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %4, align 8
  %5 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound", ptr undef, i1 undef }, ptr %3, 1
  %6 = insertvalue { ptr, ptr, i1 } %5, i1 false, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = extractvalue { ptr, ptr, i1 } %6, 0
  %8 = extractvalue { ptr, ptr, i1 } %6, 1
  %9 = extractvalue { ptr, ptr, i1 } %6, 2
  br i1 %9, label %_llgo_4, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %12 = call i64 %7(ptr %8)
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_1
  %13 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %13)
  %14 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr, i64 }, ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  call void @llvm.coro.destroy(ptr %13)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %17 = phi i64 [ %12, %_llgo_3 ], [ %16, %_llgo_4 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %3, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_17, %_llgo_16, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_12, %_llgo_20, %_llgo_17, %_llgo_16, %_llgo_1
  %11 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_22, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %17 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %16, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %17, align 8
  %18 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound", ptr undef, i1 undef }, ptr %16, 1
  %19 = insertvalue { ptr, ptr, i1 } %18, i1 false, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = extractvalue { ptr, ptr, i1 } %19, 0
  %21 = extractvalue { ptr, ptr, i1 } %19, 1
  %22 = extractvalue { ptr, ptr, i1 } %19, 2
  br i1 %22, label %_llgo_11, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %25 = call i64 %20(ptr %21)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_8
  %26 = call ptr %20(ptr %21)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_21, %_llgo_10
  %27 = phi i64 [ %25, %_llgo_10 ], [ %40, %_llgo_21 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_13:                                         ; preds = %_llgo_14
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %26)
  br i1 %28, label %_llgo_20, label %_llgo_21

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_18, %_llgo_11
  %29 = phi i1 [ true, %_llgo_11 ], [ false, %_llgo_16 ], [ false, %_llgo_17 ]
  %30 = call i1 @llvm.coro.done(ptr %26)
  br i1 %30, label %_llgo_13, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  br i1 %29, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %31 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %26)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_5
  ]

_llgo_17:                                         ; preds = %_llgo_15
  %34 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, i64 }, ptr %34, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %35, ptr %9)
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16
  br label %_llgo_14

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_13
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  br label %_llgo_5

_llgo_21:                                         ; preds = %_llgo_13
  %38 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr, i64 }, ptr %38, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  call void @llvm.coro.destroy(ptr %26)
  br label %_llgo_12

_llgo_22:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %4 = getelementptr ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { ptr, ptr, i1 } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr, i1 } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr, i1 } %7, 1
  %9 = extractvalue { ptr, ptr, i1 } %7, 2
  %10 = extractvalue { ptr, ptr, i1 } %7, 0
  %11 = call ptr %10(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %11)
  %12 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %13 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  call void @llvm.coro.destroy(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %14
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr, i1 } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr, i1 } %10, ptr %6, 1
  %12 = extractvalue { ptr, ptr, i1 } %11, 1
  %13 = extractvalue { ptr, ptr, i1 } %11, 2
  %14 = extractvalue { ptr, ptr, i1 } %11, 0
  %15 = call ptr %14(ptr %12)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %16 = call i64 @llvm.coro.size.i64()
  %17 = call ptr @malloc(i64 %16)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %18 = phi ptr [ null, %_llgo_0 ], [ %17, %_llgo_2 ]
  %19 = call ptr @llvm.coro.begin(token %4, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %20 = call i1 @llvm.coro.end(ptr %19, i1 false, token none)
  ret ptr %19

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %21 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %21)
  %22 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %23 = call ptr @llvm.coro.free(token %4, ptr %19)
  call void @free(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %15)
  br i1 %24, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %25 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %26 = call i1 @llvm.coro.done(ptr %15)
  br i1 %26, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %25, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %27 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %15)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %30 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %31, ptr %19)
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %33 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %34 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, i64 }, ptr %34, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %36, ptr %37, align 4
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 60 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  store i64 10, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 62 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %6, i32 0, i32 0
  store i64 20, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %6, 1
  %11 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 62 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %0, 1
  %15 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 63 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %6, 1
  %19 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %20, i32 0, i32 0
  store i64 30, ptr %21, align 4
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %20, 1
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 0
  %27 = getelementptr ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = insertvalue { ptr, ptr, i1 } undef, ptr %28, 0
  %30 = insertvalue { ptr, ptr, i1 } %29, ptr %25, 1
  %31 = extractvalue { ptr, ptr, i1 } %30, 1
  %32 = extractvalue { ptr, ptr, i1 } %30, 2
  %33 = extractvalue { ptr, ptr, i1 } %30, 0
  %34 = call ptr %33(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %34)
  %35 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  call void @llvm.coro.destroy(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %38, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr %39, align 8
  store i64 50, ptr %40, align 4
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker")
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %38, 1
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %46 = getelementptr ptr, ptr %45, i64 5
  %47 = load ptr, ptr %46, align 8
  %48 = insertvalue { ptr, ptr, i1 } undef, ptr %47, 0
  %49 = insertvalue { ptr, ptr, i1 } %48, ptr %44, 1
  %50 = extractvalue { ptr, ptr, i1 } %49, 1
  %51 = extractvalue { ptr, ptr, i1 } %49, 2
  %52 = extractvalue { ptr, ptr, i1 } %49, 0
  %53 = call ptr %52(ptr %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %53)
  %54 = call ptr @llvm.coro.promise(ptr %53, i32 8, i1 false)
  %55 = getelementptr inbounds { ptr, i64 }, ptr %54, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  call void @llvm.coro.destroy(ptr %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %59 = getelementptr ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = insertvalue { ptr, ptr, i1 } undef, ptr %60, 0
  %62 = insertvalue { ptr, ptr, i1 } %61, ptr %57, 1
  %63 = extractvalue { ptr, ptr, i1 } %62, 1
  %64 = extractvalue { ptr, ptr, i1 } %62, 2
  %65 = extractvalue { ptr, ptr, i1 } %62, 0
  %66 = call ptr %65(ptr %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %66)
  %67 = call ptr @llvm.coro.promise(ptr %66, i32 8, i1 false)
  %68 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %67, i32 0, i32 1
  %69 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %68, align 8
  call void @llvm.coro.destroy(ptr %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %72 = getelementptr ptr, ptr %71, i64 4
  %73 = load ptr, ptr %72, align 8
  %74 = insertvalue { ptr, ptr, i1 } undef, ptr %73, 0
  %75 = insertvalue { ptr, ptr, i1 } %74, ptr %70, 1
  %76 = extractvalue { ptr, ptr, i1 } %75, 1
  %77 = extractvalue { ptr, ptr, i1 } %75, 2
  %78 = extractvalue { ptr, ptr, i1 } %75, 0
  %79 = call ptr %78(ptr %76, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %79)
  %80 = call ptr @llvm.coro.promise(ptr %79, i32 8, i1 false)
  %81 = getelementptr inbounds { ptr, i64 }, ptr %80, i32 0, i32 1
  %82 = load i64, ptr %81, align 4
  call void @llvm.coro.destroy(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %82)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %83, i32 0, i32 0
  store i64 2, ptr %84, align 4
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator")
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %85, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, ptr %83, 1
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %88, i32 0, i32 0
  store i64 15, ptr %89, align 4
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %90, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, ptr %88, 1
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %87)
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %87, 0
  %95 = getelementptr ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  %97 = insertvalue { ptr, ptr, i1 } undef, ptr %96, 0
  %98 = insertvalue { ptr, ptr, i1 } %97, ptr %93, 1
  %99 = extractvalue { ptr, ptr, i1 } %98, 1
  %100 = extractvalue { ptr, ptr, i1 } %98, 2
  %101 = extractvalue { ptr, ptr, i1 } %98, 0
  %102 = call ptr %101(ptr %99, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %102)
  %103 = call ptr @llvm.coro.promise(ptr %102, i32 8, i1 false)
  %104 = getelementptr inbounds { ptr, i64 }, ptr %103, i32 0, i32 1
  %105 = load i64, ptr %104, align 4
  call void @llvm.coro.destroy(ptr %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory")
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %107, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %108, ptr %106, 1
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %109)
  %111 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %109, 0
  %112 = getelementptr ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8
  %114 = insertvalue { ptr, ptr, i1 } undef, ptr %113, 0
  %115 = insertvalue { ptr, ptr, i1 } %114, ptr %110, 1
  %116 = extractvalue { ptr, ptr, i1 } %115, 1
  %117 = extractvalue { ptr, ptr, i1 } %115, 2
  %118 = extractvalue { ptr, ptr, i1 } %115, 0
  %119 = call ptr %118(ptr %116, i64 25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %119)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %119)
  %120 = call ptr @llvm.coro.promise(ptr %119, i32 8, i1 false)
  %121 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %120, i32 0, i32 1
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %121, align 8
  call void @llvm.coro.destroy(ptr %119)
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %122)
  %124 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, 0
  %125 = getelementptr ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  %127 = insertvalue { ptr, ptr, i1 } undef, ptr %126, 0
  %128 = insertvalue { ptr, ptr, i1 } %127, ptr %123, 1
  %129 = extractvalue { ptr, ptr, i1 } %128, 1
  %130 = extractvalue { ptr, ptr, i1 } %128, 2
  %131 = extractvalue { ptr, ptr, i1 } %128, 0
  %132 = call ptr %131(ptr %129)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %132)
  %133 = call ptr @llvm.coro.promise(ptr %132, i32 8, i1 false)
  %134 = getelementptr inbounds { ptr, i64 }, ptr %133, i32 0, i32 1
  %135 = load i64, ptr %134, align 4
  call void @llvm.coro.destroy(ptr %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %136, i32 0, i32 0
  store i64 35, ptr %137, align 4
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %138, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %139, ptr %136, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %140)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %142 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %141, i32 0, i32 0
  store i64 40, ptr %142, align 4
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %143, 0
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %144, ptr %141, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %145)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %147 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, i64 0
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %148, i32 0, i32 0
  store i64 5, ptr %149, align 4
  %150 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %150, 0
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %151, ptr %148, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %152, ptr %147, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, i64 1
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %154, i32 0, i32 0
  store i64 10, ptr %155, align 4
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %156, 0
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %157, ptr %154, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %158, ptr %153, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, i64 2
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %160, i32 0, i32 0
  store i64 15, ptr %161, align 4
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %162, 0
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %163, ptr %160, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %164, ptr %159, align 8
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %146, 0
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165, i64 3, 1
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %166, i64 3, 2
  %168 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 47 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %169 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %169)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %171 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %170, i32 0, i32 0
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %170, i32 0, i32 1
  store i64 100, ptr %171, align 4
  store i64 100, ptr %172, align 4
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker")
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %173, 0
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %174, ptr %170, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %175)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %177 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %176, i32 0, i32 0
  store i64 60, ptr %177, align 4
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %178, 0
  %180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %179, ptr %176, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %182 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %181, i32 0, i32 0
  store i64 70, ptr %182, align 4
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %183, 0
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %184, ptr %181, 1
  %186 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %185)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory")
  %189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %188, 0
  %190 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %189, ptr %187, 1
  %191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %190)
  %192 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %190, 0
  %193 = getelementptr ptr, ptr %192, i64 3
  %194 = load ptr, ptr %193, align 8
  %195 = insertvalue { ptr, ptr, i1 } undef, ptr %194, 0
  %196 = insertvalue { ptr, ptr, i1 } %195, ptr %191, 1
  %197 = extractvalue { ptr, ptr, i1 } %196, 1
  %198 = extractvalue { ptr, ptr, i1 } %196, 2
  %199 = extractvalue { ptr, ptr, i1 } %196, 0
  %200 = call ptr %199(ptr %197, i64 45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %200)
  %201 = call ptr @llvm.coro.promise(ptr %200, i32 8, i1 false)
  %202 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %201, i32 0, i32 1
  %203 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %202, align 8
  call void @llvm.coro.destroy(ptr %200)
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %203)
  %205 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %203, 0
  %206 = getelementptr ptr, ptr %205, i64 3
  %207 = load ptr, ptr %206, align 8
  %208 = insertvalue { ptr, ptr, i1 } undef, ptr %207, 0
  %209 = insertvalue { ptr, ptr, i1 } %208, ptr %204, 1
  %210 = extractvalue { ptr, ptr, i1 } %209, 1
  %211 = extractvalue { ptr, ptr, i1 } %209, 2
  %212 = extractvalue { ptr, ptr, i1 } %209, 0
  %213 = call ptr %212(ptr %210)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %213)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %213)
  %214 = call ptr @llvm.coro.promise(ptr %213, i32 8, i1 false)
  %215 = getelementptr inbounds { ptr, i64 }, ptr %214, i32 0, i32 1
  %216 = load i64, ptr %215, align 4
  call void @llvm.coro.destroy(ptr %213)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %216)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %217 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %217)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 60 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %4, i32 0, i32 0
  store i64 10, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %4, 1
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 62 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %10, i32 0, i32 0
  store i64 20, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %10, 1
  %15 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 62 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %4, 1
  %19 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 17 })
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %20 = call i64 @llvm.coro.size.i64()
  %21 = call ptr @malloc(i64 %20)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %22 = phi ptr [ null, %_llgo_0 ], [ %21, %_llgo_2 ]
  %23 = call ptr @llvm.coro.begin(token %2, ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_128, %_llgo_127, %_llgo_119, %_llgo_118, %_llgo_110, %_llgo_109, %_llgo_101, %_llgo_100, %_llgo_92, %_llgo_91, %_llgo_83, %_llgo_82, %_llgo_74, %_llgo_73, %_llgo_65, %_llgo_64, %_llgo_56, %_llgo_55, %_llgo_47, %_llgo_46, %_llgo_38, %_llgo_37, %_llgo_29, %_llgo_28, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %24 = call i1 @llvm.coro.end(ptr %23, i1 false, token none)
  ret ptr %23

_llgo_5:                                          ; preds = %_llgo_132, %_llgo_131, %_llgo_128, %_llgo_127, %_llgo_122, %_llgo_119, %_llgo_118, %_llgo_113, %_llgo_110, %_llgo_109, %_llgo_104, %_llgo_101, %_llgo_100, %_llgo_95, %_llgo_92, %_llgo_91, %_llgo_86, %_llgo_83, %_llgo_82, %_llgo_77, %_llgo_74, %_llgo_73, %_llgo_68, %_llgo_65, %_llgo_64, %_llgo_59, %_llgo_56, %_llgo_55, %_llgo_50, %_llgo_47, %_llgo_46, %_llgo_41, %_llgo_38, %_llgo_37, %_llgo_32, %_llgo_29, %_llgo_28, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %25 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %25)
  %26 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_133
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_133, %_llgo_5
  %27 = call ptr @llvm.coro.free(token %2, ptr %23)
  call void @free(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %28, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %29 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %30 = call i1 @llvm.coro.done(ptr %19)
  br i1 %30, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %29, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %31 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %34 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, i64 }, ptr %34, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %35, ptr %23)
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %38 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr, i64 }, ptr %38, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 63 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %10, 1
  %44 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 18 })
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %45 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %44)
  br i1 %45, label %_llgo_23, label %_llgo_24

_llgo_17:                                         ; preds = %_llgo_22, %_llgo_21, %_llgo_15
  %46 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_19 ], [ false, %_llgo_20 ]
  %47 = call i1 @llvm.coro.done(ptr %44)
  br i1 %47, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  br i1 %46, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %48 = call ptr @llvm.coro.promise(ptr %44, i32 8, i1 false)
  %49 = getelementptr inbounds { ptr, i64 }, ptr %48, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %49, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %44)
  %50 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %50, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %51 = call ptr @llvm.coro.promise(ptr %44, i32 8, i1 false)
  %52 = getelementptr inbounds { ptr, i64 }, ptr %51, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %52, ptr %23)
  %53 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %53, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_17

_llgo_23:                                         ; preds = %_llgo_16
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %54)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_16
  %55 = call ptr @llvm.coro.promise(ptr %44, i32 8, i1 false)
  %56 = getelementptr inbounds { ptr, i64 }, ptr %55, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %58, i32 0, i32 0
  store i64 30, ptr %59, align 4
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %61, ptr %58, 1
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %62)
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %62, 0
  %65 = getelementptr ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  %67 = insertvalue { ptr, ptr, i1 } undef, ptr %66, 0
  %68 = insertvalue { ptr, ptr, i1 } %67, ptr %63, 1
  %69 = extractvalue { ptr, ptr, i1 } %68, 1
  %70 = extractvalue { ptr, ptr, i1 } %68, 2
  %71 = extractvalue { ptr, ptr, i1 } %68, 0
  %72 = call ptr %71(ptr %69)
  br label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_26
  %73 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %72)
  br i1 %73, label %_llgo_32, label %_llgo_33

_llgo_26:                                         ; preds = %_llgo_31, %_llgo_30, %_llgo_24
  %74 = phi i1 [ true, %_llgo_24 ], [ false, %_llgo_28 ], [ false, %_llgo_29 ]
  %75 = call i1 @llvm.coro.done(ptr %72)
  br i1 %75, label %_llgo_25, label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26
  br i1 %74, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %76 = call ptr @llvm.coro.promise(ptr %72, i32 8, i1 false)
  %77 = getelementptr inbounds { ptr, i64 }, ptr %76, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %77, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %72)
  %78 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %78, label %_llgo_4 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_27
  %79 = call ptr @llvm.coro.promise(ptr %72, i32 8, i1 false)
  %80 = getelementptr inbounds { ptr, i64 }, ptr %79, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %80, ptr %23)
  %81 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %81, label %_llgo_4 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_5
  ]

_llgo_30:                                         ; preds = %_llgo_28
  br label %_llgo_26

_llgo_31:                                         ; preds = %_llgo_29
  br label %_llgo_26

_llgo_32:                                         ; preds = %_llgo_25
  %82 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %82)
  br label %_llgo_5

_llgo_33:                                         ; preds = %_llgo_25
  %83 = call ptr @llvm.coro.promise(ptr %72, i32 8, i1 false)
  %84 = getelementptr inbounds { ptr, i64 }, ptr %83, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  call void @llvm.coro.destroy(ptr %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %86, i32 0, i32 0
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %86, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr %87, align 8
  store i64 50, ptr %88, align 4
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker")
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %86, 1
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %91)
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, 0
  %94 = getelementptr ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = insertvalue { ptr, ptr, i1 } undef, ptr %95, 0
  %97 = insertvalue { ptr, ptr, i1 } %96, ptr %92, 1
  %98 = extractvalue { ptr, ptr, i1 } %97, 1
  %99 = extractvalue { ptr, ptr, i1 } %97, 2
  %100 = extractvalue { ptr, ptr, i1 } %97, 0
  %101 = call ptr %100(ptr %98)
  br label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_35
  %102 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %101)
  br i1 %102, label %_llgo_41, label %_llgo_42

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_39, %_llgo_33
  %103 = phi i1 [ true, %_llgo_33 ], [ false, %_llgo_37 ], [ false, %_llgo_38 ]
  %104 = call i1 @llvm.coro.done(ptr %101)
  br i1 %104, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  br i1 %103, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %105 = call ptr @llvm.coro.promise(ptr %101, i32 8, i1 false)
  %106 = getelementptr inbounds { ptr, i64 }, ptr %105, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %106, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %101)
  %107 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %107, label %_llgo_4 [
    i8 0, label %_llgo_39
    i8 1, label %_llgo_5
  ]

_llgo_38:                                         ; preds = %_llgo_36
  %108 = call ptr @llvm.coro.promise(ptr %101, i32 8, i1 false)
  %109 = getelementptr inbounds { ptr, i64 }, ptr %108, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %109, ptr %23)
  %110 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %110, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  br label %_llgo_35

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_34
  %111 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %111)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_34
  %112 = call ptr @llvm.coro.promise(ptr %101, i32 8, i1 false)
  %113 = getelementptr inbounds { ptr, i64 }, ptr %112, i32 0, i32 1
  %114 = load i64, ptr %113, align 4
  call void @llvm.coro.destroy(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %114)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %91)
  %116 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, 0
  %117 = getelementptr ptr, ptr %116, i64 3
  %118 = load ptr, ptr %117, align 8
  %119 = insertvalue { ptr, ptr, i1 } undef, ptr %118, 0
  %120 = insertvalue { ptr, ptr, i1 } %119, ptr %115, 1
  %121 = extractvalue { ptr, ptr, i1 } %120, 1
  %122 = extractvalue { ptr, ptr, i1 } %120, 2
  %123 = extractvalue { ptr, ptr, i1 } %120, 0
  %124 = call ptr %123(ptr %121)
  br label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_44
  %125 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %124)
  br i1 %125, label %_llgo_50, label %_llgo_51

_llgo_44:                                         ; preds = %_llgo_49, %_llgo_48, %_llgo_42
  %126 = phi i1 [ true, %_llgo_42 ], [ false, %_llgo_46 ], [ false, %_llgo_47 ]
  %127 = call i1 @llvm.coro.done(ptr %124)
  br i1 %127, label %_llgo_43, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  br i1 %126, label %_llgo_46, label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_45
  %128 = call ptr @llvm.coro.promise(ptr %124, i32 8, i1 false)
  %129 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %128, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %129, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %124)
  %130 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %130, label %_llgo_4 [
    i8 0, label %_llgo_48
    i8 1, label %_llgo_5
  ]

_llgo_47:                                         ; preds = %_llgo_45
  %131 = call ptr @llvm.coro.promise(ptr %124, i32 8, i1 false)
  %132 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %131, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %132, ptr %23)
  %133 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %133, label %_llgo_4 [
    i8 0, label %_llgo_49
    i8 1, label %_llgo_5
  ]

_llgo_48:                                         ; preds = %_llgo_46
  br label %_llgo_44

_llgo_49:                                         ; preds = %_llgo_47
  br label %_llgo_44

_llgo_50:                                         ; preds = %_llgo_43
  %134 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %134)
  br label %_llgo_5

_llgo_51:                                         ; preds = %_llgo_43
  %135 = call ptr @llvm.coro.promise(ptr %124, i32 8, i1 false)
  %136 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %135, i32 0, i32 1
  %137 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %136, align 8
  call void @llvm.coro.destroy(ptr %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %91)
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, 0
  %140 = getelementptr ptr, ptr %139, i64 4
  %141 = load ptr, ptr %140, align 8
  %142 = insertvalue { ptr, ptr, i1 } undef, ptr %141, 0
  %143 = insertvalue { ptr, ptr, i1 } %142, ptr %138, 1
  %144 = extractvalue { ptr, ptr, i1 } %143, 1
  %145 = extractvalue { ptr, ptr, i1 } %143, 2
  %146 = extractvalue { ptr, ptr, i1 } %143, 0
  %147 = call ptr %146(ptr %144, i64 100)
  br label %_llgo_53

_llgo_52:                                         ; preds = %_llgo_53
  %148 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %147)
  br i1 %148, label %_llgo_59, label %_llgo_60

_llgo_53:                                         ; preds = %_llgo_58, %_llgo_57, %_llgo_51
  %149 = phi i1 [ true, %_llgo_51 ], [ false, %_llgo_55 ], [ false, %_llgo_56 ]
  %150 = call i1 @llvm.coro.done(ptr %147)
  br i1 %150, label %_llgo_52, label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53
  br i1 %149, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %151 = call ptr @llvm.coro.promise(ptr %147, i32 8, i1 false)
  %152 = getelementptr inbounds { ptr, i64 }, ptr %151, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %152, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %147)
  %153 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %153, label %_llgo_4 [
    i8 0, label %_llgo_57
    i8 1, label %_llgo_5
  ]

_llgo_56:                                         ; preds = %_llgo_54
  %154 = call ptr @llvm.coro.promise(ptr %147, i32 8, i1 false)
  %155 = getelementptr inbounds { ptr, i64 }, ptr %154, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %155, ptr %23)
  %156 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %156, label %_llgo_4 [
    i8 0, label %_llgo_58
    i8 1, label %_llgo_5
  ]

_llgo_57:                                         ; preds = %_llgo_55
  br label %_llgo_53

_llgo_58:                                         ; preds = %_llgo_56
  br label %_llgo_53

_llgo_59:                                         ; preds = %_llgo_52
  %157 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %147)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %147)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %157)
  br label %_llgo_5

_llgo_60:                                         ; preds = %_llgo_52
  %158 = call ptr @llvm.coro.promise(ptr %147, i32 8, i1 false)
  %159 = getelementptr inbounds { ptr, i64 }, ptr %158, i32 0, i32 1
  %160 = load i64, ptr %159, align 4
  call void @llvm.coro.destroy(ptr %147)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %160)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %162 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %161, i32 0, i32 0
  store i64 2, ptr %162, align 4
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator")
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %163, 0
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %164, ptr %161, 1
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %166, i32 0, i32 0
  store i64 15, ptr %167, align 4
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %168, 0
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %169, ptr %166, 1
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %165)
  %172 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %165, 0
  %173 = getelementptr ptr, ptr %172, i64 3
  %174 = load ptr, ptr %173, align 8
  %175 = insertvalue { ptr, ptr, i1 } undef, ptr %174, 0
  %176 = insertvalue { ptr, ptr, i1 } %175, ptr %171, 1
  %177 = extractvalue { ptr, ptr, i1 } %176, 1
  %178 = extractvalue { ptr, ptr, i1 } %176, 2
  %179 = extractvalue { ptr, ptr, i1 } %176, 0
  %180 = call ptr %179(ptr %177, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %170)
  br label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_62
  %181 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %180)
  br i1 %181, label %_llgo_68, label %_llgo_69

_llgo_62:                                         ; preds = %_llgo_67, %_llgo_66, %_llgo_60
  %182 = phi i1 [ true, %_llgo_60 ], [ false, %_llgo_64 ], [ false, %_llgo_65 ]
  %183 = call i1 @llvm.coro.done(ptr %180)
  br i1 %183, label %_llgo_61, label %_llgo_63

_llgo_63:                                         ; preds = %_llgo_62
  br i1 %182, label %_llgo_64, label %_llgo_65

_llgo_64:                                         ; preds = %_llgo_63
  %184 = call ptr @llvm.coro.promise(ptr %180, i32 8, i1 false)
  %185 = getelementptr inbounds { ptr, i64 }, ptr %184, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %185, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %180)
  %186 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %186, label %_llgo_4 [
    i8 0, label %_llgo_66
    i8 1, label %_llgo_5
  ]

_llgo_65:                                         ; preds = %_llgo_63
  %187 = call ptr @llvm.coro.promise(ptr %180, i32 8, i1 false)
  %188 = getelementptr inbounds { ptr, i64 }, ptr %187, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %188, ptr %23)
  %189 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %189, label %_llgo_4 [
    i8 0, label %_llgo_67
    i8 1, label %_llgo_5
  ]

_llgo_66:                                         ; preds = %_llgo_64
  br label %_llgo_62

_llgo_67:                                         ; preds = %_llgo_65
  br label %_llgo_62

_llgo_68:                                         ; preds = %_llgo_61
  %190 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %190)
  br label %_llgo_5

_llgo_69:                                         ; preds = %_llgo_61
  %191 = call ptr @llvm.coro.promise(ptr %180, i32 8, i1 false)
  %192 = getelementptr inbounds { ptr, i64 }, ptr %191, i32 0, i32 1
  %193 = load i64, ptr %192, align 4
  call void @llvm.coro.destroy(ptr %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %193)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory")
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %195, 0
  %197 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %196, ptr %194, 1
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %197)
  %199 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %197, 0
  %200 = getelementptr ptr, ptr %199, i64 3
  %201 = load ptr, ptr %200, align 8
  %202 = insertvalue { ptr, ptr, i1 } undef, ptr %201, 0
  %203 = insertvalue { ptr, ptr, i1 } %202, ptr %198, 1
  %204 = extractvalue { ptr, ptr, i1 } %203, 1
  %205 = extractvalue { ptr, ptr, i1 } %203, 2
  %206 = extractvalue { ptr, ptr, i1 } %203, 0
  %207 = call ptr %206(ptr %204, i64 25)
  br label %_llgo_71

_llgo_70:                                         ; preds = %_llgo_71
  %208 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %207)
  br i1 %208, label %_llgo_77, label %_llgo_78

_llgo_71:                                         ; preds = %_llgo_76, %_llgo_75, %_llgo_69
  %209 = phi i1 [ true, %_llgo_69 ], [ false, %_llgo_73 ], [ false, %_llgo_74 ]
  %210 = call i1 @llvm.coro.done(ptr %207)
  br i1 %210, label %_llgo_70, label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  br i1 %209, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %211 = call ptr @llvm.coro.promise(ptr %207, i32 8, i1 false)
  %212 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %211, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %212, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %207)
  %213 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %213, label %_llgo_4 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72
  %214 = call ptr @llvm.coro.promise(ptr %207, i32 8, i1 false)
  %215 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %214, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %215, ptr %23)
  %216 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %216, label %_llgo_4 [
    i8 0, label %_llgo_76
    i8 1, label %_llgo_5
  ]

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_71

_llgo_76:                                         ; preds = %_llgo_74
  br label %_llgo_71

_llgo_77:                                         ; preds = %_llgo_70
  %217 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %217)
  br label %_llgo_5

_llgo_78:                                         ; preds = %_llgo_70
  %218 = call ptr @llvm.coro.promise(ptr %207, i32 8, i1 false)
  %219 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %218, i32 0, i32 1
  %220 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %219, align 8
  call void @llvm.coro.destroy(ptr %207)
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %220)
  %222 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %220, 0
  %223 = getelementptr ptr, ptr %222, i64 3
  %224 = load ptr, ptr %223, align 8
  %225 = insertvalue { ptr, ptr, i1 } undef, ptr %224, 0
  %226 = insertvalue { ptr, ptr, i1 } %225, ptr %221, 1
  %227 = extractvalue { ptr, ptr, i1 } %226, 1
  %228 = extractvalue { ptr, ptr, i1 } %226, 2
  %229 = extractvalue { ptr, ptr, i1 } %226, 0
  %230 = call ptr %229(ptr %227)
  br label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_80
  %231 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %230)
  br i1 %231, label %_llgo_86, label %_llgo_87

_llgo_80:                                         ; preds = %_llgo_85, %_llgo_84, %_llgo_78
  %232 = phi i1 [ true, %_llgo_78 ], [ false, %_llgo_82 ], [ false, %_llgo_83 ]
  %233 = call i1 @llvm.coro.done(ptr %230)
  br i1 %233, label %_llgo_79, label %_llgo_81

_llgo_81:                                         ; preds = %_llgo_80
  br i1 %232, label %_llgo_82, label %_llgo_83

_llgo_82:                                         ; preds = %_llgo_81
  %234 = call ptr @llvm.coro.promise(ptr %230, i32 8, i1 false)
  %235 = getelementptr inbounds { ptr, i64 }, ptr %234, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %235, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %230)
  %236 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %236, label %_llgo_4 [
    i8 0, label %_llgo_84
    i8 1, label %_llgo_5
  ]

_llgo_83:                                         ; preds = %_llgo_81
  %237 = call ptr @llvm.coro.promise(ptr %230, i32 8, i1 false)
  %238 = getelementptr inbounds { ptr, i64 }, ptr %237, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %238, ptr %23)
  %239 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %239, label %_llgo_4 [
    i8 0, label %_llgo_85
    i8 1, label %_llgo_5
  ]

_llgo_84:                                         ; preds = %_llgo_82
  br label %_llgo_80

_llgo_85:                                         ; preds = %_llgo_83
  br label %_llgo_80

_llgo_86:                                         ; preds = %_llgo_79
  %240 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %230)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %230)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %240)
  br label %_llgo_5

_llgo_87:                                         ; preds = %_llgo_79
  %241 = call ptr @llvm.coro.promise(ptr %230, i32 8, i1 false)
  %242 = getelementptr inbounds { ptr, i64 }, ptr %241, i32 0, i32 1
  %243 = load i64, ptr %242, align 4
  call void @llvm.coro.destroy(ptr %230)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %243)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %245 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %244, i32 0, i32 0
  store i64 35, ptr %245, align 4
  %246 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %247 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %246, 0
  %248 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %247, ptr %244, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %248)
  %249 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %250 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %249, i32 0, i32 0
  store i64 40, ptr %250, align 4
  %251 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %252 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %251, 0
  %253 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %252, ptr %249, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %253)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %254 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %255 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %254, i64 0
  %256 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %257 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %256, i32 0, i32 0
  store i64 5, ptr %257, align 4
  %258 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %259 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %258, 0
  %260 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %259, ptr %256, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %260, ptr %255, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %254, i64 1
  %262 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %262, i32 0, i32 0
  store i64 10, ptr %263, align 4
  %264 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %265 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %264, 0
  %266 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %265, ptr %262, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %266, ptr %261, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %254, i64 2
  %268 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %269 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %268, i32 0, i32 0
  store i64 15, ptr %269, align 4
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %271 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %270, 0
  %272 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %271, ptr %268, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %272, ptr %267, align 8
  %273 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %254, 0
  %274 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %273, i64 3, 1
  %275 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, i64 3, 2
  %276 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %275)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 47 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %277 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %275)
  br label %_llgo_89

_llgo_88:                                         ; preds = %_llgo_89
  %278 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %277)
  br i1 %278, label %_llgo_95, label %_llgo_96

_llgo_89:                                         ; preds = %_llgo_94, %_llgo_93, %_llgo_87
  %279 = phi i1 [ true, %_llgo_87 ], [ false, %_llgo_91 ], [ false, %_llgo_92 ]
  %280 = call i1 @llvm.coro.done(ptr %277)
  br i1 %280, label %_llgo_88, label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89
  br i1 %279, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %281 = call ptr @llvm.coro.promise(ptr %277, i32 8, i1 false)
  %282 = getelementptr inbounds { ptr, i64 }, ptr %281, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %282, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %277)
  %283 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %283, label %_llgo_4 [
    i8 0, label %_llgo_93
    i8 1, label %_llgo_5
  ]

_llgo_92:                                         ; preds = %_llgo_90
  %284 = call ptr @llvm.coro.promise(ptr %277, i32 8, i1 false)
  %285 = getelementptr inbounds { ptr, i64 }, ptr %284, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %285, ptr %23)
  %286 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %286, label %_llgo_4 [
    i8 0, label %_llgo_94
    i8 1, label %_llgo_5
  ]

_llgo_93:                                         ; preds = %_llgo_91
  br label %_llgo_89

_llgo_94:                                         ; preds = %_llgo_92
  br label %_llgo_89

_llgo_95:                                         ; preds = %_llgo_88
  %287 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %277)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %277)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %287)
  br label %_llgo_5

_llgo_96:                                         ; preds = %_llgo_88
  %288 = call ptr @llvm.coro.promise(ptr %277, i32 8, i1 false)
  %289 = getelementptr inbounds { ptr, i64 }, ptr %288, i32 0, i32 1
  %290 = load i64, ptr %289, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %291 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %292 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %291, i32 0, i32 0
  %293 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %291, i32 0, i32 1
  store i64 100, ptr %292, align 4
  store i64 100, ptr %293, align 4
  %294 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker")
  %295 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %294, 0
  %296 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %295, ptr %291, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %296)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %298 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %297, i32 0, i32 0
  store i64 60, ptr %298, align 4
  %299 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %300 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %299, 0
  %301 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %300, ptr %297, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %301)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %302 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %303 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %302, i32 0, i32 0
  store i64 70, ptr %303, align 4
  %304 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %305 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %304, 0
  %306 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %305, ptr %302, 1
  %307 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %306)
  br label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_98
  %308 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %307)
  br i1 %308, label %_llgo_104, label %_llgo_105

_llgo_98:                                         ; preds = %_llgo_103, %_llgo_102, %_llgo_96
  %309 = phi i1 [ true, %_llgo_96 ], [ false, %_llgo_100 ], [ false, %_llgo_101 ]
  %310 = call i1 @llvm.coro.done(ptr %307)
  br i1 %310, label %_llgo_97, label %_llgo_99

_llgo_99:                                         ; preds = %_llgo_98
  br i1 %309, label %_llgo_100, label %_llgo_101

_llgo_100:                                        ; preds = %_llgo_99
  %311 = call ptr @llvm.coro.promise(ptr %307, i32 8, i1 false)
  %312 = getelementptr inbounds { ptr }, ptr %311, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %312, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %307)
  %313 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %313, label %_llgo_4 [
    i8 0, label %_llgo_102
    i8 1, label %_llgo_5
  ]

_llgo_101:                                        ; preds = %_llgo_99
  %314 = call ptr @llvm.coro.promise(ptr %307, i32 8, i1 false)
  %315 = getelementptr inbounds { ptr }, ptr %314, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %315, ptr %23)
  %316 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %316, label %_llgo_4 [
    i8 0, label %_llgo_103
    i8 1, label %_llgo_5
  ]

_llgo_102:                                        ; preds = %_llgo_100
  br label %_llgo_98

_llgo_103:                                        ; preds = %_llgo_101
  br label %_llgo_98

_llgo_104:                                        ; preds = %_llgo_97
  %317 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %307)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %307)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %317)
  br label %_llgo_5

_llgo_105:                                        ; preds = %_llgo_97
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %318 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %319 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory")
  %320 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %319, 0
  %321 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %320, ptr %318, 1
  %322 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %321)
  %323 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %321, 0
  %324 = getelementptr ptr, ptr %323, i64 3
  %325 = load ptr, ptr %324, align 8
  %326 = insertvalue { ptr, ptr, i1 } undef, ptr %325, 0
  %327 = insertvalue { ptr, ptr, i1 } %326, ptr %322, 1
  %328 = extractvalue { ptr, ptr, i1 } %327, 1
  %329 = extractvalue { ptr, ptr, i1 } %327, 2
  %330 = extractvalue { ptr, ptr, i1 } %327, 0
  %331 = call ptr %330(ptr %328, i64 45)
  br label %_llgo_107

_llgo_106:                                        ; preds = %_llgo_107
  %332 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %331)
  br i1 %332, label %_llgo_113, label %_llgo_114

_llgo_107:                                        ; preds = %_llgo_112, %_llgo_111, %_llgo_105
  %333 = phi i1 [ true, %_llgo_105 ], [ false, %_llgo_109 ], [ false, %_llgo_110 ]
  %334 = call i1 @llvm.coro.done(ptr %331)
  br i1 %334, label %_llgo_106, label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107
  br i1 %333, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %335 = call ptr @llvm.coro.promise(ptr %331, i32 8, i1 false)
  %336 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %335, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %336, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %331)
  %337 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %337, label %_llgo_4 [
    i8 0, label %_llgo_111
    i8 1, label %_llgo_5
  ]

_llgo_110:                                        ; preds = %_llgo_108
  %338 = call ptr @llvm.coro.promise(ptr %331, i32 8, i1 false)
  %339 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %338, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %339, ptr %23)
  %340 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %340, label %_llgo_4 [
    i8 0, label %_llgo_112
    i8 1, label %_llgo_5
  ]

_llgo_111:                                        ; preds = %_llgo_109
  br label %_llgo_107

_llgo_112:                                        ; preds = %_llgo_110
  br label %_llgo_107

_llgo_113:                                        ; preds = %_llgo_106
  %341 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %331)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %331)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %341)
  br label %_llgo_5

_llgo_114:                                        ; preds = %_llgo_106
  %342 = call ptr @llvm.coro.promise(ptr %331, i32 8, i1 false)
  %343 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %342, i32 0, i32 1
  %344 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %343, align 8
  call void @llvm.coro.destroy(ptr %331)
  %345 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %344)
  %346 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %344, 0
  %347 = getelementptr ptr, ptr %346, i64 3
  %348 = load ptr, ptr %347, align 8
  %349 = insertvalue { ptr, ptr, i1 } undef, ptr %348, 0
  %350 = insertvalue { ptr, ptr, i1 } %349, ptr %345, 1
  %351 = extractvalue { ptr, ptr, i1 } %350, 1
  %352 = extractvalue { ptr, ptr, i1 } %350, 2
  %353 = extractvalue { ptr, ptr, i1 } %350, 0
  %354 = call ptr %353(ptr %351)
  br label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_116
  %355 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %354)
  br i1 %355, label %_llgo_122, label %_llgo_123

_llgo_116:                                        ; preds = %_llgo_121, %_llgo_120, %_llgo_114
  %356 = phi i1 [ true, %_llgo_114 ], [ false, %_llgo_118 ], [ false, %_llgo_119 ]
  %357 = call i1 @llvm.coro.done(ptr %354)
  br i1 %357, label %_llgo_115, label %_llgo_117

_llgo_117:                                        ; preds = %_llgo_116
  br i1 %356, label %_llgo_118, label %_llgo_119

_llgo_118:                                        ; preds = %_llgo_117
  %358 = call ptr @llvm.coro.promise(ptr %354, i32 8, i1 false)
  %359 = getelementptr inbounds { ptr, i64 }, ptr %358, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %359, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %354)
  %360 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %360, label %_llgo_4 [
    i8 0, label %_llgo_120
    i8 1, label %_llgo_5
  ]

_llgo_119:                                        ; preds = %_llgo_117
  %361 = call ptr @llvm.coro.promise(ptr %354, i32 8, i1 false)
  %362 = getelementptr inbounds { ptr, i64 }, ptr %361, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %362, ptr %23)
  %363 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %363, label %_llgo_4 [
    i8 0, label %_llgo_121
    i8 1, label %_llgo_5
  ]

_llgo_120:                                        ; preds = %_llgo_118
  br label %_llgo_116

_llgo_121:                                        ; preds = %_llgo_119
  br label %_llgo_116

_llgo_122:                                        ; preds = %_llgo_115
  %364 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %354)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %354)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %364)
  br label %_llgo_5

_llgo_123:                                        ; preds = %_llgo_115
  %365 = call ptr @llvm.coro.promise(ptr %354, i32 8, i1 false)
  %366 = getelementptr inbounds { ptr, i64 }, ptr %365, i32 0, i32 1
  %367 = load i64, ptr %366, align 4
  call void @llvm.coro.destroy(ptr %354)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %367)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %368 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"()
  br label %_llgo_125

_llgo_124:                                        ; preds = %_llgo_125
  %369 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %368)
  br i1 %369, label %_llgo_131, label %_llgo_132

_llgo_125:                                        ; preds = %_llgo_130, %_llgo_129, %_llgo_123
  %370 = phi i1 [ true, %_llgo_123 ], [ false, %_llgo_127 ], [ false, %_llgo_128 ]
  %371 = call i1 @llvm.coro.done(ptr %368)
  br i1 %371, label %_llgo_124, label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125
  br i1 %370, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %372 = call ptr @llvm.coro.promise(ptr %368, i32 8, i1 false)
  %373 = getelementptr inbounds { ptr }, ptr %372, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %373, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %368)
  %374 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %374, label %_llgo_4 [
    i8 0, label %_llgo_129
    i8 1, label %_llgo_5
  ]

_llgo_128:                                        ; preds = %_llgo_126
  %375 = call ptr @llvm.coro.promise(ptr %368, i32 8, i1 false)
  %376 = getelementptr inbounds { ptr }, ptr %375, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %376, ptr %23)
  %377 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %377, label %_llgo_4 [
    i8 0, label %_llgo_130
    i8 1, label %_llgo_5
  ]

_llgo_129:                                        ; preds = %_llgo_127
  br label %_llgo_125

_llgo_130:                                        ; preds = %_llgo_128
  br label %_llgo_125

_llgo_131:                                        ; preds = %_llgo_124
  %378 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %368)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %368)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %378)
  br label %_llgo_5

_llgo_132:                                        ; preds = %_llgo_124
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_133:                                        ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %3 = phi i64 [ 0, %_llgo_0 ], [ %27, %_llgo_2 ]
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %2
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %7, i64 %5
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %13)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, 0
  %16 = getelementptr ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = insertvalue { ptr, ptr, i1 } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr, i1 } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr, i1 } %19, 1
  %21 = extractvalue { ptr, ptr, i1 } %19, 2
  %22 = extractvalue { ptr, ptr, i1 } %19, 0
  %23 = call ptr %22(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %23)
  %24 = call ptr @llvm.coro.promise(ptr %23, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @llvm.coro.destroy(ptr %23)
  %27 = add i64 %3, %26
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_18, %_llgo_1
  %7 = phi i64 [ 0, %_llgo_1 ], [ %50, %_llgo_18 ]
  %8 = phi i64 [ -1, %_llgo_1 ], [ %9, %_llgo_18 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, %6
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %13 = icmp slt i64 %9, 0
  %14 = icmp sge i64 %9, %12
  %15 = or i1 %14, %13
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %11, i64 %9
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %17)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, 0
  %20 = getelementptr ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = insertvalue { ptr, ptr, i1 } undef, ptr %21, 0
  %23 = insertvalue { ptr, ptr, i1 } %22, ptr %18, 1
  %24 = extractvalue { ptr, ptr, i1 } %23, 1
  %25 = extractvalue { ptr, ptr, i1 } %23, 2
  %26 = extractvalue { ptr, ptr, i1 } %23, 0
  %27 = call ptr %26(ptr %24)
  br label %_llgo_11

_llgo_4:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %7, ptr %28, align 4
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %29 = call i64 @llvm.coro.size.i64()
  %30 = call ptr @malloc(i64 %29)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %31 = phi ptr [ null, %_llgo_0 ], [ %30, %_llgo_5 ]
  %32 = call ptr @llvm.coro.begin(token %3, ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_14, %_llgo_13
  %33 = call i1 @llvm.coro.end(ptr %32, i1 false, token none)
  ret ptr %32

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_17, %_llgo_14, %_llgo_13
  %34 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %34)
  %35 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %35, label %_llgo_7 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_19, %_llgo_8
  %36 = call ptr @llvm.coro.free(token %3, ptr %32)
  call void @free(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_11
  %37 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %27)
  br i1 %37, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_3
  %38 = phi i1 [ true, %_llgo_3 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %39 = call i1 @llvm.coro.done(ptr %27)
  br i1 %39, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %38, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %40 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %41, ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %27)
  %42 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %42, label %_llgo_7 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_8
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %43 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr, i64 }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %32)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_8
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %46 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %46)
  br label %_llgo_8

_llgo_18:                                         ; preds = %_llgo_10
  %47 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %48 = getelementptr inbounds { ptr, i64 }, ptr %47, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  call void @llvm.coro.destroy(ptr %27)
  %50 = add i64 %7, %49
  br label %_llgo_2

_llgo_19:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  store i64 99, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 49 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$thunk"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %4, i32 0, i32 0
  store i64 99, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 49 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$thunk"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %4 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %3, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %4, align 8
  %5 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound", ptr undef, i1 undef }, ptr %3, 1
  %6 = insertvalue { ptr, ptr, i1 } %5, i1 false, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = extractvalue { ptr, ptr, i1 } %6, 0
  %8 = extractvalue { ptr, ptr, i1 } %6, 1
  %9 = extractvalue { ptr, ptr, i1 } %6, 2
  br i1 %9, label %_llgo_4, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %12 = call i64 %7(ptr %8)
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_1
  %13 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %13)
  %14 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr, i64 }, ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  call void @llvm.coro.destroy(ptr %13)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %17 = phi i64 [ %12, %_llgo_3 ], [ %16, %_llgo_4 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_16, %_llgo_15
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_19, %_llgo_16, %_llgo_15
  %12 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_21, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %16 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %15, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %16, align 8
  %17 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound", ptr undef, i1 undef }, ptr %15, 1
  %18 = insertvalue { ptr, ptr, i1 } %17, i1 false, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = extractvalue { ptr, ptr, i1 } %18, 0
  %20 = extractvalue { ptr, ptr, i1 } %18, 1
  %21 = extractvalue { ptr, ptr, i1 } %18, 2
  br i1 %21, label %_llgo_10, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  unreachable

_llgo_9:                                          ; preds = %_llgo_7
  %24 = call i64 %19(ptr %20)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_7
  %25 = call ptr %19(ptr %20)
  br label %_llgo_13

_llgo_11:                                         ; preds = %_llgo_20, %_llgo_9
  %26 = phi i64 [ %24, %_llgo_9 ], [ %39, %_llgo_20 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_13
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %25)
  br i1 %27, label %_llgo_19, label %_llgo_20

_llgo_13:                                         ; preds = %_llgo_18, %_llgo_17, %_llgo_10
  %28 = phi i1 [ true, %_llgo_10 ], [ false, %_llgo_15 ], [ false, %_llgo_16 ]
  %29 = call i1 @llvm.coro.done(ptr %25)
  br i1 %29, label %_llgo_12, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  br i1 %28, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %30 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %31, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %25)
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  %33 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %34, ptr %10)
  %35 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %35, label %_llgo_4 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_5
  ]

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_13

_llgo_18:                                         ; preds = %_llgo_16
  br label %_llgo_13

_llgo_19:                                         ; preds = %_llgo_12
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %36)
  br label %_llgo_5

_llgo_20:                                         ; preds = %_llgo_12
  %37 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %37, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  call void @llvm.coro.destroy(ptr %25)
  br label %_llgo_11

_llgo_21:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr, i1 } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr, i1 } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr, i1 } %6, 1
  %8 = extractvalue { ptr, ptr, i1 } %6, 2
  %9 = extractvalue { ptr, ptr, i1 } %6, 0
  %10 = call ptr %9(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  %11 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %12 = getelementptr inbounds { ptr, i64 }, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  call void @llvm.coro.destroy(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %16 = getelementptr ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = insertvalue { ptr, ptr, i1 } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr, i1 } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr, i1 } %19, 1
  %21 = extractvalue { ptr, ptr, i1 } %19, 2
  %22 = extractvalue { ptr, ptr, i1 } %19, 0
  %23 = call ptr %22(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %23)
  %24 = call ptr @llvm.coro.promise(ptr %23, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @llvm.coro.destroy(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %29 = getelementptr ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = insertvalue { ptr, ptr, i1 } undef, ptr %30, 0
  %32 = insertvalue { ptr, ptr, i1 } %31, ptr %27, 1
  %33 = extractvalue { ptr, ptr, i1 } %32, 1
  %34 = extractvalue { ptr, ptr, i1 } %32, 2
  %35 = extractvalue { ptr, ptr, i1 } %32, 0
  %36 = call ptr %35(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %36)
  call void @llvm.coro.destroy(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %39 = getelementptr ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = insertvalue { ptr, ptr, i1 } undef, ptr %40, 0
  %42 = insertvalue { ptr, ptr, i1 } %41, ptr %37, 1
  %43 = extractvalue { ptr, ptr, i1 } %42, 1
  %44 = extractvalue { ptr, ptr, i1 } %42, 2
  %45 = extractvalue { ptr, ptr, i1 } %42, 0
  %46 = call ptr %45(ptr %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %46)
  %47 = call ptr @llvm.coro.promise(ptr %46, i32 8, i1 false)
  %48 = getelementptr inbounds { ptr, i64 }, ptr %47, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  call void @llvm.coro.destroy(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %7 = getelementptr ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr, i1 } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr, i1 } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr, i1 } %10, 1
  %12 = extractvalue { ptr, ptr, i1 } %10, 2
  %13 = extractvalue { ptr, ptr, i1 } %10, 0
  %14 = call ptr %13(ptr %11)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %3, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_38, %_llgo_37, %_llgo_29, %_llgo_28, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_42, %_llgo_41, %_llgo_38, %_llgo_37, %_llgo_32, %_llgo_29, %_llgo_28, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %20 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_43
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_43, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %14)
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %24 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %25 = call i1 @llvm.coro.done(ptr %14)
  br i1 %25, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %24, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %26 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %14)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %29 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %18)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %33 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %38 = getelementptr ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = insertvalue { ptr, ptr, i1 } undef, ptr %39, 0
  %41 = insertvalue { ptr, ptr, i1 } %40, ptr %36, 1
  %42 = extractvalue { ptr, ptr, i1 } %41, 1
  %43 = extractvalue { ptr, ptr, i1 } %41, 2
  %44 = extractvalue { ptr, ptr, i1 } %41, 0
  %45 = call ptr %44(ptr %42)
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %45)
  br i1 %46, label %_llgo_23, label %_llgo_24

_llgo_17:                                         ; preds = %_llgo_22, %_llgo_21, %_llgo_15
  %47 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_19 ], [ false, %_llgo_20 ]
  %48 = call i1 @llvm.coro.done(ptr %45)
  br i1 %48, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  br i1 %47, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %49 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr, i64 }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %45)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %52 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %53 = getelementptr inbounds { ptr, i64 }, ptr %52, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %53, ptr %18)
  %54 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %54, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_17

_llgo_23:                                         ; preds = %_llgo_16
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_16
  %56 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %57 = getelementptr inbounds { ptr, i64 }, ptr %56, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  call void @llvm.coro.destroy(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %61 = getelementptr ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  %63 = insertvalue { ptr, ptr, i1 } undef, ptr %62, 0
  %64 = insertvalue { ptr, ptr, i1 } %63, ptr %59, 1
  %65 = extractvalue { ptr, ptr, i1 } %64, 1
  %66 = extractvalue { ptr, ptr, i1 } %64, 2
  %67 = extractvalue { ptr, ptr, i1 } %64, 0
  %68 = call ptr %67(ptr %65)
  br label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_26
  %69 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %68)
  br i1 %69, label %_llgo_32, label %_llgo_33

_llgo_26:                                         ; preds = %_llgo_31, %_llgo_30, %_llgo_24
  %70 = phi i1 [ true, %_llgo_24 ], [ false, %_llgo_28 ], [ false, %_llgo_29 ]
  %71 = call i1 @llvm.coro.done(ptr %68)
  br i1 %71, label %_llgo_25, label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26
  br i1 %70, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %72 = call ptr @llvm.coro.promise(ptr %68, i32 8, i1 false)
  %73 = getelementptr inbounds { ptr }, ptr %72, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %73, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %68)
  %74 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %74, label %_llgo_4 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_27
  %75 = call ptr @llvm.coro.promise(ptr %68, i32 8, i1 false)
  %76 = getelementptr inbounds { ptr }, ptr %75, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %76, ptr %18)
  %77 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %77, label %_llgo_4 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_5
  ]

_llgo_30:                                         ; preds = %_llgo_28
  br label %_llgo_26

_llgo_31:                                         ; preds = %_llgo_29
  br label %_llgo_26

_llgo_32:                                         ; preds = %_llgo_25
  %78 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %78)
  br label %_llgo_5

_llgo_33:                                         ; preds = %_llgo_25
  call void @llvm.coro.destroy(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %81 = getelementptr ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  %83 = insertvalue { ptr, ptr, i1 } undef, ptr %82, 0
  %84 = insertvalue { ptr, ptr, i1 } %83, ptr %79, 1
  %85 = extractvalue { ptr, ptr, i1 } %84, 1
  %86 = extractvalue { ptr, ptr, i1 } %84, 2
  %87 = extractvalue { ptr, ptr, i1 } %84, 0
  %88 = call ptr %87(ptr %85)
  br label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_35
  %89 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %88)
  br i1 %89, label %_llgo_41, label %_llgo_42

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_39, %_llgo_33
  %90 = phi i1 [ true, %_llgo_33 ], [ false, %_llgo_37 ], [ false, %_llgo_38 ]
  %91 = call i1 @llvm.coro.done(ptr %88)
  br i1 %91, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  br i1 %90, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %92 = call ptr @llvm.coro.promise(ptr %88, i32 8, i1 false)
  %93 = getelementptr inbounds { ptr, i64 }, ptr %92, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %93, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %88)
  %94 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %94, label %_llgo_4 [
    i8 0, label %_llgo_39
    i8 1, label %_llgo_5
  ]

_llgo_38:                                         ; preds = %_llgo_36
  %95 = call ptr @llvm.coro.promise(ptr %88, i32 8, i1 false)
  %96 = getelementptr inbounds { ptr, i64 }, ptr %95, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %96, ptr %18)
  %97 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %97, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  br label %_llgo_35

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_34
  %98 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %98)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_34
  %99 = call ptr @llvm.coro.promise(ptr %88, i32 8, i1 false)
  %100 = getelementptr inbounds { ptr, i64 }, ptr %99, i32 0, i32 1
  %101 = load i64, ptr %100, align 4
  call void @llvm.coro.destroy(ptr %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_43:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = icmp eq ptr %1, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker"
  br i1 %2, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_7
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %15, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 43 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_4, %_llgo_10, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_7
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %7 = icmp eq ptr %6, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker"
  br i1 %7, label %_llgo_8, label %_llgo_9

_llgo_4:                                          ; preds = %_llgo_10
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %21, i32 0, i32 0
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %12 = insertvalue { ptr, i1 } undef, ptr %11, 0
  %13 = insertvalue { ptr, i1 } %12, i1 true, 1
  br label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_0
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_5
  %14 = phi { ptr, i1 } [ %13, %_llgo_5 ], [ zeroinitializer, %_llgo_6 ]
  %15 = extractvalue { ptr, i1 } %14, 0
  %16 = extractvalue { ptr, i1 } %14, 1
  br i1 %16, label %_llgo_1, label %_llgo_3

_llgo_8:                                          ; preds = %_llgo_3
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %18 = insertvalue { ptr, i1 } undef, ptr %17, 0
  %19 = insertvalue { ptr, i1 } %18, i1 true, 1
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_3
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %20 = phi { ptr, i1 } [ %19, %_llgo_8 ], [ zeroinitializer, %_llgo_9 ]
  %21 = extractvalue { ptr, i1 } %20, 0
  %22 = extractvalue { ptr, i1 } %20, 1
  br i1 %22, label %_llgo_4, label %_llgo_2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_6, label %_llgo_7

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = icmp eq ptr %5, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker"
  br i1 %6, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %27, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 43 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_16, %_llgo_2
  br label %_llgo_9

_llgo_4:                                          ; preds = %_llgo_13
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %11 = icmp eq ptr %10, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker"
  br i1 %11, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %33, i32 0, i32 0
  %13 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work"(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_6:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_6 ]
  %18 = call ptr @llvm.coro.begin(token %3, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_9
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_9:                                          ; preds = %_llgo_3
  %20 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_8 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_10
  ]

_llgo_10:                                         ; preds = %_llgo_17, %_llgo_9
  %22 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_1
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %24 = insertvalue { ptr, i1 } undef, ptr %23, 0
  %25 = insertvalue { ptr, i1 } %24, i1 true, 1
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %26 = phi { ptr, i1 } [ %25, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %27 = extractvalue { ptr, i1 } %26, 0
  %28 = extractvalue { ptr, i1 } %26, 1
  br i1 %28, label %_llgo_2, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_4
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %30 = insertvalue { ptr, i1 } undef, ptr %29, 0
  %31 = insertvalue { ptr, i1 } %30, i1 true, 1
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %32 = phi { ptr, i1 } [ %31, %_llgo_14 ], [ zeroinitializer, %_llgo_15 ]
  %33 = extractvalue { ptr, i1 } %32, 0
  %34 = extractvalue { ptr, i1 } %32, 1
  br i1 %34, label %_llgo_5, label %_llgo_3

_llgo_17:                                         ; preds = %_llgo_9
  br label %_llgo_10
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #1

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$thunk"(ptr %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work"(ptr %0)
  ret i64 %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$thunk$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work"(ptr %0)
  %6 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %5, ptr %6, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr, i1 } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr, i1 } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr, i1 } %8, 1
  %10 = extractvalue { ptr, ptr, i1 } %8, 2
  %11 = extractvalue { ptr, ptr, i1 } %8, 0
  %12 = call ptr %11(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %12)
  %13 = call ptr @llvm.coro.promise(ptr %12, i32 8, i1 false)
  %14 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  call void @llvm.coro.destroy(ptr %12)
  ret i64 %15
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr, i1 } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr, i1 } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr, i1 } %12, 1
  %14 = extractvalue { ptr, ptr, i1 } %12, 2
  %15 = extractvalue { ptr, ptr, i1 } %12, 0
  %16 = call ptr %15(ptr %13)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %17 = call i64 @llvm.coro.size.i64()
  %18 = call ptr @malloc(i64 %17)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %19 = phi ptr [ null, %_llgo_0 ], [ %18, %_llgo_2 ]
  %20 = call ptr @llvm.coro.begin(token %4, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %21 = call i1 @llvm.coro.end(ptr %20, i1 false, token none)
  ret ptr %20

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %22 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %22)
  %23 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %24 = call ptr @llvm.coro.free(token %4, ptr %20)
  call void @free(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %16)
  br i1 %25, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %26 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %27 = call i1 @llvm.coro.done(ptr %16)
  br i1 %27, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %26, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %28 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %16)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %31 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %20)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %35 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  call void @llvm.coro.destroy(ptr %16)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %37, ptr %38, align 4
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$thunk"(ptr %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work"(ptr %0)
  ret i64 %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$thunk$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work"(ptr %0)
  %6 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %5, ptr %6, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
