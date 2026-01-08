; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coroiface'
source_filename = "github.com/goplus/llgo/cl/_testrt/coroiface"

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
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" = type { i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" = type { i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" = type { i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/coroiface.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [39 x i8] c"AsyncDelegator.Delegate: calling worker", align 1
@1 = private unnamed_addr constant [40 x i8] c"AsyncDelegator.Delegate: worker returned", align 1
@2 = private unnamed_addr constant [32 x i8] c"AsyncWorker.Work: start, value =", align 1
@3 = private unnamed_addr constant [32 x i8] c"AsyncWorker.Work: done, result =", align 1
@4 = private unnamed_addr constant [34 x i8] c"AsyncWorkerFactory.Create: value =", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 634486221, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro" }] }, align 8
@5 = private unnamed_addr constant [16 x i8] c"main.AsyncWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 911676830, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@6 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testrt/coroiface", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr @"*_llgo_int" }, align 8
@8 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@9 = private unnamed_addr constant [4 x i8] c"Work", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@10 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1090036849, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 24 }, ptr @"*_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA$imethods", i64 1, i64 1 } }, align 8
@11 = private unnamed_addr constant [24 x i8] c"interface { Work() int }", align 1
@"*_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -104529525, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 24 }, ptr null }, ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA" }, align 8
@"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@12 = private unnamed_addr constant [16 x i8] c"FullWorker.Name:", align 1
@13 = private unnamed_addr constant [23 x i8] c"FullWorker.Process: x =", align 1
@14 = private unnamed_addr constant [24 x i8] c"FullWorker.Work: value =", align 1
@15 = private unnamed_addr constant [34 x i8] c"StatefulWorker.Reset: resetting to", align 1
@16 = private unnamed_addr constant [30 x i8] c"StatefulWorker.Work: current =", align 1
@17 = private unnamed_addr constant [24 x i8] c"SyncWorker.Work: value =", align 1
@18 = private unnamed_addr constant [33 x i8] c"SyncWorkerFactory.Create: value =", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -930979729, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro" }] }, align 8
@19 = private unnamed_addr constant [15 x i8] c"main.SyncWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 50163103, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$lOhriNu2BrWBR2Mh8k-KggMYlAw0Wx-2ftE2_gNyubg$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@20 = private unnamed_addr constant [16 x i8] c"asyncCallWorker:", align 1
@21 = private unnamed_addr constant [25 x i8] c"asyncCallWorker: result =", align 1
@22 = private unnamed_addr constant [26 x i8] c"asyncProcessWorkers: start", align 1
@23 = private unnamed_addr constant [27 x i8] c"asyncProcessWorkers: worker", align 1
@24 = private unnamed_addr constant [28 x i8] c"asyncProcessWorkers: total =", align 1
@25 = private unnamed_addr constant [32 x i8] c"asyncTestMethodExpression: start", align 1
@26 = private unnamed_addr constant [40 x i8] c"asyncTestMethodExpression: calling thunk", align 1
@27 = private unnamed_addr constant [35 x i8] c"asyncTestMethodExpression: result =", align 1
@28 = private unnamed_addr constant [27 x i8] c"asyncTestMethodValue: start", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -795757320, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA$imethods", i64 1, i64 1 } }, align 8
@29 = private unnamed_addr constant [11 x i8] c"main.Worker", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2018866141, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker" }, align 8
@30 = private unnamed_addr constant [126 x i8] c"type assertion github.com/goplus/llgo/cl/_testrt/coroiface.Worker -> github.com/goplus/llgo/cl/_testrt/coroiface.Worker failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr @"*_llgo_string" }, align 8
@31 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
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
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1537213357, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Name$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Name$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 7 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Process$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Process$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*FullWorker).Work$coro" }] }, align 8
@50 = private unnamed_addr constant [15 x i8] c"main.FullWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 -1200776286, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$MWK7nv11st0bfTXDO-wG0n_xJla9dCG8WB3il9kFSQY$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@51 = private unnamed_addr constant [4 x i8] c"name", align 1
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$MWK7nv11st0bfTXDO-wG0n_xJla9dCG8WB3il9kFSQY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@52 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@53 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@54 = private unnamed_addr constant [7 x i8] c"Process", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@55 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2080390876, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 57 }, ptr @"*_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc$imethods", i64 3, i64 3 } }, align 8
@56 = private unnamed_addr constant [57 x i8] c"interface { Name() string; Process(int) int; Work() int }", align 1
@"*_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1654459137, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 57 }, ptr null }, ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc" }, align 8
@"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 7 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@57 = private unnamed_addr constant [30 x i8] c"main: FullWorker.Work result =", align 1
@58 = private unnamed_addr constant [30 x i8] c"main: FullWorker.Name result =", align 1
@59 = private unnamed_addr constant [33 x i8] c"main: FullWorker.Process result =", align 1
@60 = private unnamed_addr constant [54 x i8] c"\0A=== Test 7: Interface calls interface (delegator) ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1382948099, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 8 }, ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate$coro" }] }, align 8
@61 = private unnamed_addr constant [19 x i8] c"main.AsyncDelegator", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1720108046, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$hjGifX37gtE7g6mZn4dR6Zkhm8CsB014ii6mHjg2baE$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@62 = private unnamed_addr constant [10 x i8] c"multiplier", align 1
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$hjGifX37gtE7g6mZn4dR6Zkhm8CsB014ii6mHjg2baE$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 10 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@63 = private unnamed_addr constant [8 x i8] c"Delegate", align 1
@"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1410930229, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 21 }, ptr @"*_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$out", i64 1, i64 1 } }, align 8
@64 = private unnamed_addr constant [21 x i8] c"func(main.Worker) int", align 1
@"*_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1652536018, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 21 }, ptr null }, ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" }, align 8
@"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$in" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker"], align 8
@"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 481589620, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 39 }, ptr @"*_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8$imethods", i64 1, i64 1 } }, align 8
@65 = private unnamed_addr constant [39 x i8] c"interface { Delegate(main.Worker) int }", align 1
@"*_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1016268504, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 39 }, ptr null }, ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8" }, align 8
@"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 8 }, ptr @"_llgo_func$402IaZJSwlBK2QpGfDDwYmI9EqZsyiu9EWyGdS-Tw4U" }], align 8
@66 = private unnamed_addr constant [24 x i8] c"main: delegator result =", align 1
@67 = private unnamed_addr constant [54 x i8] c"\0A=== Test 8: Interface returns interface (factory) ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2076775541, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorkerFactory).Create$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorkerFactory).Create$coro" }] }, align 8
@68 = private unnamed_addr constant [23 x i8] c"main.AsyncWorkerFactory", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -1781351252, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@69 = private unnamed_addr constant [6 x i8] c"Create", align 1
@"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 697108341, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 21 }, ptr @"*_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$out", i64 1, i64 1 } }, align 8
@70 = private unnamed_addr constant [21 x i8] c"func(int) main.Worker", align 1
@"*_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1940202750, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 21 }, ptr null }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" }, align 8
@"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.Worker"], align 8
@"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1805914562, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 37 }, ptr @"*_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g$imethods", i64 1, i64 1 } }, align 8
@71 = private unnamed_addr constant [37 x i8] c"interface { Create(int) main.Worker }", align 1
@"*_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1800814497, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 37 }, ptr null }, ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g" }, align 8
@"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs" }], align 8
@72 = private unnamed_addr constant [37 x i8] c"main: factory created worker result =", align 1
@73 = private unnamed_addr constant [31 x i8] c"\0A=== Test 9: Type assertion ===", align 1
@74 = private unnamed_addr constant [33 x i8] c"\0A=== Test 10: Interface slice ===", align 1
@75 = private unnamed_addr constant [28 x i8] c"main: processWorkers total =", align 1
@76 = private unnamed_addr constant [47 x i8] c"\0A=== Test 11: Async process interface slice ===", align 1
@77 = private unnamed_addr constant [54 x i8] c"\0A=== Test 12: Resettable worker (nested embedding) ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -571733308, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Reset$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Reset$coro" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Work$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*StatefulWorker).Work$coro" }] }, align 8
@78 = private unnamed_addr constant [19 x i8] c"main.StatefulWorker", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 2105620925, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.struct$2A9FcZwBDZ-qkFYkJUcjh0YCvSbHHHjp0rj_rMBv2tI$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@79 = private unnamed_addr constant [7 x i8] c"initial", align 1
@80 = private unnamed_addr constant [7 x i8] c"current", align 1
@"github.com/goplus/llgo/cl/_testrt/coroiface.struct$2A9FcZwBDZ-qkFYkJUcjh0YCvSbHHHjp0rj_rMBv2tI$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 7 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@81 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@82 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -327712991, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 33 }, ptr @"*_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU$imethods", i64 2, i64 2 } }, align 8
@83 = private unnamed_addr constant [33 x i8] c"interface { Reset(); Work() int }", align 1
@"*_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1621656103, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 33 }, ptr null }, ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU" }, align 8
@"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@84 = private unnamed_addr constant [45 x i8] c"\0A=== Test 13: Method value (sync context) ===", align 1
@85 = private unnamed_addr constant [46 x i8] c"\0A=== Test 14: Method value (async context) ===", align 1
@86 = private unnamed_addr constant [30 x i8] c"\0A=== Test 15: Sync factory ===", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 351156054, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 6 }, ptr @"_llgo_func$_tdQVOUxZpJhI32ZbaM76Xl7xlRW9EK_693AVw-IeEs", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorkerFactory).Create$coro", ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorkerFactory).Create$coro" }] }, align 8
@87 = private unnamed_addr constant [22 x i8] c"main.SyncWorkerFactory", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 1927264388, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
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
  %6 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  %10 = call ptr %9(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  %11 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %0, i32 0, i32 0
  %14 = load i64, ptr %13, align 4
  %15 = mul i64 %12, %14
  ret i64 %15
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncDelegator).Delegate$coro"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_13
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4, %_llgo_12, %_llgo_1
  %11 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_17
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call ptr %20(ptr %19)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %22 = call i1 @llvm.coro.done(ptr %21)
  br i1 %22, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %21)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %23 = call i1 @llvm.coro.done(ptr %21)
  br i1 %23, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %25 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %0, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = mul i64 %26, %28
  store i64 %29, ptr %2, align 4
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %9

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_7
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %12 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = mul i64 %15, 3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %16, ptr %1, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %10

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %11 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %13, i32 0, i32 0
  store i64 %1, ptr %14, align 4
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %13, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %2, align 8
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, ptr %1, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %13 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %11 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = add i64 %14, %1
  store i64 %15, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_7
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %12 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = mul i64 %15, 4
  store i64 %16, ptr %1, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %10

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  store i64 %6, ptr %7, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %1, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %13 = call ptr @llvm.coro.free(token %1, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_7
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %12 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = add i64 %17, 10
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  store i64 %15, ptr %1, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %10

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %0, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = mul i64 %7, 2
  store i64 %8, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %2, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %14 = call ptr @llvm.coro.free(token %2, ptr %12)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %15 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %5, i32 0, i32 0
  store i64 %1, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %5, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %2, align 8
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %3, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %15 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %16 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %6 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  %10 = call ptr %9(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  %11 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %12
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_13
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4, %_llgo_12, %_llgo_1
  %11 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_17
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call ptr %20(ptr %19)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %22 = call i1 @llvm.coro.done(ptr %21)
  br i1 %22, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %21)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %23 = call i1 @llvm.coro.done(ptr %21)
  br i1 %23, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %25 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %26, ptr %2, align 4
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %9

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ 0, %_llgo_0 ], [ %24, %_llgo_2 ]
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
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call ptr %20(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %21)
  %22 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %23 = load i64, ptr %22, align 4
  %24 = add i64 %2, %23
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_11 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_2:                                          ; preds = %_llgo_16, %_llgo_10
  %5 = phi i64 [ 0, %_llgo_10 ], [ %38, %_llgo_16 ]
  %6 = phi i64 [ -1, %_llgo_10 ], [ %7, %_llgo_16 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %32
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %11 = icmp slt i64 %7, 0
  %12 = icmp sge i64 %7, %10
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, i64 %7
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %15)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = insertvalue { ptr, ptr } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr } %20, ptr %16, 1
  %22 = extractvalue { ptr, ptr } %21, 1
  %23 = extractvalue { ptr, ptr } %21, 0
  %24 = call ptr %23(ptr %22)
  br label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %5, ptr %1, align 4
  br label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_0
  %25 = call i64 @llvm.coro.size.i64()
  %26 = call ptr @malloc(i64 %25)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %27 = phi ptr [ null, %_llgo_0 ], [ %26, %_llgo_5 ]
  %28 = call ptr @llvm.coro.begin(token %2, ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_4
  %29 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %29, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_19, %_llgo_7, %_llgo_15, %_llgo_1
  %30 = call ptr @llvm.coro.free(token %2, ptr %28)
  call void @free(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_20
  %31 = call i1 @llvm.coro.end(ptr %28, i1 false, token none)
  ret ptr %28

_llgo_10:                                         ; preds = %_llgo_1
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_11:                                         ; preds = %_llgo_1
  ret ptr %28

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_3
  %33 = call i1 @llvm.coro.done(ptr %24)
  br i1 %33, label %_llgo_16, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  call void @llvm.coro.resume(ptr %24)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  %34 = call i1 @llvm.coro.done(ptr %24)
  br i1 %34, label %_llgo_16, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  %35 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %35, label %_llgo_18 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_8
  ]

_llgo_16:                                         ; preds = %_llgo_14, %_llgo_12
  %36 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %37 = load i64, ptr %36, align 4
  %38 = add i64 %5, %37
  br label %_llgo_2

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_15
  ret ptr %28

_llgo_19:                                         ; preds = %_llgo_7
  br label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_7
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
  %2 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$thunk$coro", ptr %2, align 8
  %3 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 0
  %4 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr %5(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %7)
  %8 = call ptr @llvm.coro.promise(ptr %7, i32 8, i1 false)
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %2, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %3 = call i64 @llvm.coro.size.i64()
  %4 = call ptr @malloc(i64 %3)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ null, %_llgo_0 ], [ %4, %_llgo_2 ]
  %6 = call ptr @llvm.coro.begin(token %0, ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_13
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4, %_llgo_12, %_llgo_1
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_17
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %10, i32 0, i32 0
  store i64 88, ptr %11, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$thunk$coro", ptr %12, align 8
  %13 = getelementptr { ptr, ptr }, ptr %12, i32 0, i32 0
  %14 = getelementptr { ptr, ptr }, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %13, align 8
  %16 = load ptr, ptr %14, align 8
  %17 = call ptr %15(ptr %10)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %18 = call i1 @llvm.coro.done(ptr %17)
  br i1 %18, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %17)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %19 = call i1 @llvm.coro.done(ptr %17)
  br i1 %19, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %21 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %22 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %6

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_4
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
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound$coro", ptr undef }, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  %8 = call ptr %6(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %8)
  %9 = call ptr @llvm.coro.promise(ptr %8, i32 8, i1 false)
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %3, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %1, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_15
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_19 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_18, %_llgo_4, %_llgo_14, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_19
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_7
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %14 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %13, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %14, align 8
  %15 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound$coro", ptr undef }, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = extractvalue { ptr, ptr } %15, 0
  %17 = extractvalue { ptr, ptr } %15, 1
  %18 = call ptr %16(ptr %17)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_7
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  unreachable

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_9
  %21 = call i1 @llvm.coro.done(ptr %18)
  br i1 %21, label %_llgo_15, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  call void @llvm.coro.resume(ptr %18)
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %22 = call i1 @llvm.coro.done(ptr %18)
  br i1 %22, label %_llgo_15, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13, %_llgo_11
  %24 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_14
  ret ptr %7

_llgo_18:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_4
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
  %6 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  %10 = call ptr %9(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %10)
  %11 = call ptr @llvm.coro.promise(ptr %10, i32 8, i1 false)
  %12 = load i64, ptr %11, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %12
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call ptr %12(ptr %11)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_2 ]
  %17 = call ptr @llvm.coro.begin(token %3, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %19 = call ptr @llvm.coro.free(token %3, ptr %17)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %20 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %21 = call i1 @llvm.coro.done(ptr %13)
  br i1 %21, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %13)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %22 = call i1 @llvm.coro.done(ptr %13)
  br i1 %22, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %24 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %25, ptr %2, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %17

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %29 = insertvalue { ptr, ptr } undef, ptr %28, 0
  %30 = insertvalue { ptr, ptr } %29, ptr %25, 1
  %31 = extractvalue { ptr, ptr } %30, 1
  %32 = extractvalue { ptr, ptr } %30, 0
  %33 = call ptr %32(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %33)
  %34 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %35 = load i64, ptr %34, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %36, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr %37, align 8
  store i64 50, ptr %38, align 4
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker")
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %36, 1
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 0
  %44 = getelementptr ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  %46 = insertvalue { ptr, ptr } undef, ptr %45, 0
  %47 = insertvalue { ptr, ptr } %46, ptr %42, 1
  %48 = extractvalue { ptr, ptr } %47, 1
  %49 = extractvalue { ptr, ptr } %47, 0
  %50 = call ptr %49(ptr %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %50)
  %51 = call ptr @llvm.coro.promise(ptr %50, i32 8, i1 false)
  %52 = load i64, ptr %51, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 0
  %55 = getelementptr ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  %57 = insertvalue { ptr, ptr } undef, ptr %56, 0
  %58 = insertvalue { ptr, ptr } %57, ptr %53, 1
  %59 = extractvalue { ptr, ptr } %58, 1
  %60 = extractvalue { ptr, ptr } %58, 0
  %61 = call ptr %60(ptr %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %61)
  %62 = call ptr @llvm.coro.promise(ptr %61, i32 8, i1 false)
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %62, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 0
  %66 = getelementptr ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = insertvalue { ptr, ptr } undef, ptr %67, 0
  %69 = insertvalue { ptr, ptr } %68, ptr %64, 1
  %70 = extractvalue { ptr, ptr } %69, 1
  %71 = extractvalue { ptr, ptr } %69, 0
  %72 = call ptr %71(ptr %70, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %72)
  %73 = call ptr @llvm.coro.promise(ptr %72, i32 8, i1 false)
  %74 = load i64, ptr %73, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %75, i32 0, i32 0
  store i64 2, ptr %76, align 4
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator")
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %77, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, ptr %75, 1
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %80, i32 0, i32 0
  store i64 15, ptr %81, align 4
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %83, ptr %80, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %79)
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %79, 0
  %87 = getelementptr ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  %89 = insertvalue { ptr, ptr } undef, ptr %88, 0
  %90 = insertvalue { ptr, ptr } %89, ptr %85, 1
  %91 = extractvalue { ptr, ptr } %90, 1
  %92 = extractvalue { ptr, ptr } %90, 0
  %93 = call ptr %92(ptr %91, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %93)
  %94 = call ptr @llvm.coro.promise(ptr %93, i32 8, i1 false)
  %95 = load i64, ptr %94, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %95)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory")
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %97, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %98, ptr %96, 1
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %99)
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, 0
  %102 = getelementptr ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  %104 = insertvalue { ptr, ptr } undef, ptr %103, 0
  %105 = insertvalue { ptr, ptr } %104, ptr %100, 1
  %106 = extractvalue { ptr, ptr } %105, 1
  %107 = extractvalue { ptr, ptr } %105, 0
  %108 = call ptr %107(ptr %106, i64 25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %108)
  %109 = call ptr @llvm.coro.promise(ptr %108, i32 8, i1 false)
  %110 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %109, align 8
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %110)
  %112 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %110, 0
  %113 = getelementptr ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  %115 = insertvalue { ptr, ptr } undef, ptr %114, 0
  %116 = insertvalue { ptr, ptr } %115, ptr %111, 1
  %117 = extractvalue { ptr, ptr } %116, 1
  %118 = extractvalue { ptr, ptr } %116, 0
  %119 = call ptr %118(ptr %117)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %119)
  %120 = call ptr @llvm.coro.promise(ptr %119, i32 8, i1 false)
  %121 = load i64, ptr %120, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %121)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %122, i32 0, i32 0
  store i64 35, ptr %123, align 4
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %124, 0
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %125, ptr %122, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %126)
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %127, i32 0, i32 0
  store i64 40, ptr %128, align 4
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %129, 0
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %130, ptr %127, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %131)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %133 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %132, i64 0
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %134, i32 0, i32 0
  store i64 5, ptr %135, align 4
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %136, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %137, ptr %134, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %138, ptr %133, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %132, i64 1
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %140, i32 0, i32 0
  store i64 10, ptr %141, align 4
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %142, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %143, ptr %140, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %144, ptr %139, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %132, i64 2
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %146, i32 0, i32 0
  store i64 15, ptr %147, align 4
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %148, 0
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %149, ptr %146, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %150, ptr %145, align 8
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %132, 0
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, i64 3, 1
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, i64 3, 2
  %154 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %154)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 47 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %155 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %156, i32 0, i32 0
  %158 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %156, i32 0, i32 1
  store i64 100, ptr %157, align 4
  store i64 100, ptr %158, align 4
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker")
  %160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %159, 0
  %161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %160, ptr %156, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %161)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %162, i32 0, i32 0
  store i64 60, ptr %163, align 4
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %164, 0
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %165, ptr %162, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %166)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %167, i32 0, i32 0
  store i64 70, ptr %168, align 4
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %169, 0
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %170, ptr %167, 1
  %172 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory")
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %174, 0
  %176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %175, ptr %173, 1
  %177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %176)
  %178 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %176, 0
  %179 = getelementptr ptr, ptr %178, i64 3
  %180 = load ptr, ptr %179, align 8
  %181 = insertvalue { ptr, ptr } undef, ptr %180, 0
  %182 = insertvalue { ptr, ptr } %181, ptr %177, 1
  %183 = extractvalue { ptr, ptr } %182, 1
  %184 = extractvalue { ptr, ptr } %182, 0
  %185 = call ptr %184(ptr %183, i64 45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %185)
  %186 = call ptr @llvm.coro.promise(ptr %185, i32 8, i1 false)
  %187 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %186, align 8
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %187)
  %189 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %187, 0
  %190 = getelementptr ptr, ptr %189, i64 3
  %191 = load ptr, ptr %190, align 8
  %192 = insertvalue { ptr, ptr } undef, ptr %191, 0
  %193 = insertvalue { ptr, ptr } %192, ptr %188, 1
  %194 = extractvalue { ptr, ptr } %193, 1
  %195 = extractvalue { ptr, ptr } %193, 0
  %196 = call ptr %195(ptr %194)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %196)
  %197 = call ptr @llvm.coro.promise(ptr %196, i32 8, i1 false)
  %198 = load i64, ptr %197, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %199 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 60 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %2, i32 0, i32 0
  store i64 10, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %2, 1
  %7 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 62 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %8, i32 0, i32 0
  store i64 20, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %8, 1
  %13 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.callWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 62 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %2, 1
  %17 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 17 })
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %18 = call i64 @llvm.coro.size.i64()
  %19 = call ptr @malloc(i64 %18)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %20 = phi ptr [ null, %_llgo_0 ], [ %19, %_llgo_2 ]
  %21 = call ptr @llvm.coro.begin(token %0, ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_123
  %22 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %22, label %_llgo_127 [
    i8 0, label %_llgo_126
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_126, %_llgo_4, %_llgo_122, %_llgo_115, %_llgo_108, %_llgo_101, %_llgo_94, %_llgo_87, %_llgo_80, %_llgo_73, %_llgo_66, %_llgo_59, %_llgo_52, %_llgo_45, %_llgo_38, %_llgo_31, %_llgo_24, %_llgo_17, %_llgo_10
  %23 = call ptr @llvm.coro.free(token %0, ptr %21)
  call void @free(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_127
  %24 = call i1 @llvm.coro.end(ptr %21, i1 false, token none)
  ret ptr %21

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %25 = call i1 @llvm.coro.done(ptr %17)
  br i1 %25, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %17)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %26 = call i1 @llvm.coro.done(ptr %17)
  br i1 %26, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %28 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %29 = load i64, ptr %28, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 63 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %8, 1
  %33 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 18 })
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %21

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %34 = call i1 @llvm.coro.done(ptr %33)
  br i1 %34, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %33)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %35 = call i1 @llvm.coro.done(ptr %33)
  br i1 %35, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  %37 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %38 = load i64, ptr %37, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %39, i32 0, i32 0
  store i64 30, ptr %40, align 4
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %39, 1
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %46 = getelementptr ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  %48 = insertvalue { ptr, ptr } undef, ptr %47, 0
  %49 = insertvalue { ptr, ptr } %48, ptr %44, 1
  %50 = extractvalue { ptr, ptr } %49, 1
  %51 = extractvalue { ptr, ptr } %49, 0
  %52 = call ptr %51(ptr %50)
  br label %_llgo_21

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %21

_llgo_21:                                         ; preds = %_llgo_26, %_llgo_18
  %53 = call i1 @llvm.coro.done(ptr %52)
  br i1 %53, label %_llgo_25, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  call void @llvm.coro.resume(ptr %52)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %54 = call i1 @llvm.coro.done(ptr %52)
  br i1 %54, label %_llgo_25, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %55 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %55, label %_llgo_27 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_23, %_llgo_21
  %56 = call ptr @llvm.coro.promise(ptr %52, i32 8, i1 false)
  %57 = load i64, ptr %56, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %58, i32 0, i32 0
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %58, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr %59, align 8
  store i64 50, ptr %60, align 4
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker")
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %61, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %62, ptr %58, 1
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 0
  %66 = getelementptr ptr, ptr %65, i64 5
  %67 = load ptr, ptr %66, align 8
  %68 = insertvalue { ptr, ptr } undef, ptr %67, 0
  %69 = insertvalue { ptr, ptr } %68, ptr %64, 1
  %70 = extractvalue { ptr, ptr } %69, 1
  %71 = extractvalue { ptr, ptr } %69, 0
  %72 = call ptr %71(ptr %70)
  br label %_llgo_28

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %21

_llgo_28:                                         ; preds = %_llgo_33, %_llgo_25
  %73 = call i1 @llvm.coro.done(ptr %72)
  br i1 %73, label %_llgo_32, label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28
  call void @llvm.coro.resume(ptr %72)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29
  %74 = call i1 @llvm.coro.done(ptr %72)
  br i1 %74, label %_llgo_32, label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30
  %75 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %75, label %_llgo_34 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_32:                                         ; preds = %_llgo_30, %_llgo_28
  %76 = call ptr @llvm.coro.promise(ptr %72, i32 8, i1 false)
  %77 = load i64, ptr %76, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 0
  %80 = getelementptr ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  %82 = insertvalue { ptr, ptr } undef, ptr %81, 0
  %83 = insertvalue { ptr, ptr } %82, ptr %78, 1
  %84 = extractvalue { ptr, ptr } %83, 1
  %85 = extractvalue { ptr, ptr } %83, 0
  %86 = call ptr %85(ptr %84)
  br label %_llgo_35

_llgo_33:                                         ; preds = %_llgo_31
  br label %_llgo_28

_llgo_34:                                         ; preds = %_llgo_31
  ret ptr %21

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_32
  %87 = call i1 @llvm.coro.done(ptr %86)
  br i1 %87, label %_llgo_39, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  call void @llvm.coro.resume(ptr %86)
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36
  %88 = call i1 @llvm.coro.done(ptr %86)
  br i1 %88, label %_llgo_39, label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37
  %89 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %89, label %_llgo_41 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37, %_llgo_35
  %90 = call ptr @llvm.coro.promise(ptr %86, i32 8, i1 false)
  %91 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %90, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %91)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 0
  %94 = getelementptr ptr, ptr %93, i64 4
  %95 = load ptr, ptr %94, align 8
  %96 = insertvalue { ptr, ptr } undef, ptr %95, 0
  %97 = insertvalue { ptr, ptr } %96, ptr %92, 1
  %98 = extractvalue { ptr, ptr } %97, 1
  %99 = extractvalue { ptr, ptr } %97, 0
  %100 = call ptr %99(ptr %98, i64 100)
  br label %_llgo_42

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_38
  ret ptr %21

_llgo_42:                                         ; preds = %_llgo_47, %_llgo_39
  %101 = call i1 @llvm.coro.done(ptr %100)
  br i1 %101, label %_llgo_46, label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42
  call void @llvm.coro.resume(ptr %100)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %102 = call i1 @llvm.coro.done(ptr %100)
  br i1 %102, label %_llgo_46, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  %103 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %103, label %_llgo_48 [
    i8 0, label %_llgo_47
    i8 1, label %_llgo_5
  ]

_llgo_46:                                         ; preds = %_llgo_44, %_llgo_42
  %104 = call ptr @llvm.coro.promise(ptr %100, i32 8, i1 false)
  %105 = load i64, ptr %104, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %106, i32 0, i32 0
  store i64 2, ptr %107, align 4
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator")
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %108, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %109, ptr %106, 1
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %112 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %111, i32 0, i32 0
  store i64 15, ptr %112, align 4
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %113, 0
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %114, ptr %111, 1
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %110)
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %110, 0
  %118 = getelementptr ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  %120 = insertvalue { ptr, ptr } undef, ptr %119, 0
  %121 = insertvalue { ptr, ptr } %120, ptr %116, 1
  %122 = extractvalue { ptr, ptr } %121, 1
  %123 = extractvalue { ptr, ptr } %121, 0
  %124 = call ptr %123(ptr %122, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %115)
  br label %_llgo_49

_llgo_47:                                         ; preds = %_llgo_45
  br label %_llgo_42

_llgo_48:                                         ; preds = %_llgo_45
  ret ptr %21

_llgo_49:                                         ; preds = %_llgo_54, %_llgo_46
  %125 = call i1 @llvm.coro.done(ptr %124)
  br i1 %125, label %_llgo_53, label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49
  call void @llvm.coro.resume(ptr %124)
  br label %_llgo_51

_llgo_51:                                         ; preds = %_llgo_50
  %126 = call i1 @llvm.coro.done(ptr %124)
  br i1 %126, label %_llgo_53, label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51
  %127 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %127, label %_llgo_55 [
    i8 0, label %_llgo_54
    i8 1, label %_llgo_5
  ]

_llgo_53:                                         ; preds = %_llgo_51, %_llgo_49
  %128 = call ptr @llvm.coro.promise(ptr %124, i32 8, i1 false)
  %129 = load i64, ptr %128, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %129)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory")
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %131, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %132, ptr %130, 1
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %133)
  %135 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %133, 0
  %136 = getelementptr ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  %138 = insertvalue { ptr, ptr } undef, ptr %137, 0
  %139 = insertvalue { ptr, ptr } %138, ptr %134, 1
  %140 = extractvalue { ptr, ptr } %139, 1
  %141 = extractvalue { ptr, ptr } %139, 0
  %142 = call ptr %141(ptr %140, i64 25)
  br label %_llgo_56

_llgo_54:                                         ; preds = %_llgo_52
  br label %_llgo_49

_llgo_55:                                         ; preds = %_llgo_52
  ret ptr %21

_llgo_56:                                         ; preds = %_llgo_61, %_llgo_53
  %143 = call i1 @llvm.coro.done(ptr %142)
  br i1 %143, label %_llgo_60, label %_llgo_57

_llgo_57:                                         ; preds = %_llgo_56
  call void @llvm.coro.resume(ptr %142)
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57
  %144 = call i1 @llvm.coro.done(ptr %142)
  br i1 %144, label %_llgo_60, label %_llgo_59

_llgo_59:                                         ; preds = %_llgo_58
  %145 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %145, label %_llgo_62 [
    i8 0, label %_llgo_61
    i8 1, label %_llgo_5
  ]

_llgo_60:                                         ; preds = %_llgo_58, %_llgo_56
  %146 = call ptr @llvm.coro.promise(ptr %142, i32 8, i1 false)
  %147 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %146, align 8
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %147)
  %149 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %147, 0
  %150 = getelementptr ptr, ptr %149, i64 3
  %151 = load ptr, ptr %150, align 8
  %152 = insertvalue { ptr, ptr } undef, ptr %151, 0
  %153 = insertvalue { ptr, ptr } %152, ptr %148, 1
  %154 = extractvalue { ptr, ptr } %153, 1
  %155 = extractvalue { ptr, ptr } %153, 0
  %156 = call ptr %155(ptr %154)
  br label %_llgo_63

_llgo_61:                                         ; preds = %_llgo_59
  br label %_llgo_56

_llgo_62:                                         ; preds = %_llgo_59
  ret ptr %21

_llgo_63:                                         ; preds = %_llgo_68, %_llgo_60
  %157 = call i1 @llvm.coro.done(ptr %156)
  br i1 %157, label %_llgo_67, label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63
  call void @llvm.coro.resume(ptr %156)
  br label %_llgo_65

_llgo_65:                                         ; preds = %_llgo_64
  %158 = call i1 @llvm.coro.done(ptr %156)
  br i1 %158, label %_llgo_67, label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65
  %159 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %159, label %_llgo_69 [
    i8 0, label %_llgo_68
    i8 1, label %_llgo_5
  ]

_llgo_67:                                         ; preds = %_llgo_65, %_llgo_63
  %160 = call ptr @llvm.coro.promise(ptr %156, i32 8, i1 false)
  %161 = load i64, ptr %160, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %161)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %162, i32 0, i32 0
  store i64 35, ptr %163, align 4
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %164, 0
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %165, ptr %162, 1
  %167 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %166)
  br label %_llgo_70

_llgo_68:                                         ; preds = %_llgo_66
  br label %_llgo_63

_llgo_69:                                         ; preds = %_llgo_66
  ret ptr %21

_llgo_70:                                         ; preds = %_llgo_75, %_llgo_67
  %168 = call i1 @llvm.coro.done(ptr %167)
  br i1 %168, label %_llgo_74, label %_llgo_71

_llgo_71:                                         ; preds = %_llgo_70
  call void @llvm.coro.resume(ptr %167)
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  %169 = call i1 @llvm.coro.done(ptr %167)
  br i1 %169, label %_llgo_74, label %_llgo_73

_llgo_73:                                         ; preds = %_llgo_72
  %170 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %170, label %_llgo_76 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72, %_llgo_70
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %171, i32 0, i32 0
  store i64 40, ptr %172, align 4
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %173, 0
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %174, ptr %171, 1
  %176 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %175)
  br label %_llgo_77

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_70

_llgo_76:                                         ; preds = %_llgo_73
  ret ptr %21

_llgo_77:                                         ; preds = %_llgo_82, %_llgo_74
  %177 = call i1 @llvm.coro.done(ptr %176)
  br i1 %177, label %_llgo_81, label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77
  call void @llvm.coro.resume(ptr %176)
  br label %_llgo_79

_llgo_79:                                         ; preds = %_llgo_78
  %178 = call i1 @llvm.coro.done(ptr %176)
  br i1 %178, label %_llgo_81, label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79
  %179 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %179, label %_llgo_83 [
    i8 0, label %_llgo_82
    i8 1, label %_llgo_5
  ]

_llgo_81:                                         ; preds = %_llgo_79, %_llgo_77
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %181 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %180, i64 0
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %183 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %182, i32 0, i32 0
  store i64 5, ptr %183, align 4
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %184, 0
  %186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %185, ptr %182, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %186, ptr %181, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %180, i64 1
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %188, i32 0, i32 0
  store i64 10, ptr %189, align 4
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %190, 0
  %192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %191, ptr %188, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %192, ptr %187, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %180, i64 2
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %195 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %194, i32 0, i32 0
  store i64 15, ptr %195, align 4
  %196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %197 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %196, 0
  %198 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %197, ptr %194, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %198, ptr %193, align 8
  %199 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %180, 0
  %200 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %199, i64 3, 1
  %201 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %200, i64 3, 2
  %202 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %201)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %202)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 47 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %203 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %201)
  br label %_llgo_84

_llgo_82:                                         ; preds = %_llgo_80
  br label %_llgo_77

_llgo_83:                                         ; preds = %_llgo_80
  ret ptr %21

_llgo_84:                                         ; preds = %_llgo_89, %_llgo_81
  %204 = call i1 @llvm.coro.done(ptr %203)
  br i1 %204, label %_llgo_88, label %_llgo_85

_llgo_85:                                         ; preds = %_llgo_84
  call void @llvm.coro.resume(ptr %203)
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85
  %205 = call i1 @llvm.coro.done(ptr %203)
  br i1 %205, label %_llgo_88, label %_llgo_87

_llgo_87:                                         ; preds = %_llgo_86
  %206 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %206, label %_llgo_90 [
    i8 0, label %_llgo_89
    i8 1, label %_llgo_5
  ]

_llgo_88:                                         ; preds = %_llgo_86, %_llgo_84
  %207 = call ptr @llvm.coro.promise(ptr %203, i32 8, i1 false)
  %208 = load i64, ptr %207, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %210 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %209, i32 0, i32 0
  %211 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %209, i32 0, i32 1
  store i64 100, ptr %210, align 4
  store i64 100, ptr %211, align 4
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker")
  %213 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %212, 0
  %214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %213, ptr %209, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %214)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %216 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %215, i32 0, i32 0
  store i64 60, ptr %216, align 4
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %218 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %217, 0
  %219 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %218, ptr %215, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %221 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %220, i32 0, i32 0
  store i64 70, ptr %221, align 4
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %223 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %222, 0
  %224 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %223, ptr %220, 1
  %225 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %224)
  br label %_llgo_91

_llgo_89:                                         ; preds = %_llgo_87
  br label %_llgo_84

_llgo_90:                                         ; preds = %_llgo_87
  ret ptr %21

_llgo_91:                                         ; preds = %_llgo_96, %_llgo_88
  %226 = call i1 @llvm.coro.done(ptr %225)
  br i1 %226, label %_llgo_95, label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91
  call void @llvm.coro.resume(ptr %225)
  br label %_llgo_93

_llgo_93:                                         ; preds = %_llgo_92
  %227 = call i1 @llvm.coro.done(ptr %225)
  br i1 %227, label %_llgo_95, label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93
  %228 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %228, label %_llgo_97 [
    i8 0, label %_llgo_96
    i8 1, label %_llgo_5
  ]

_llgo_95:                                         ; preds = %_llgo_93, %_llgo_91
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %229 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %230 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory")
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %230, 0
  %232 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %231, ptr %229, 1
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %232)
  %234 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %232, 0
  %235 = getelementptr ptr, ptr %234, i64 3
  %236 = load ptr, ptr %235, align 8
  %237 = insertvalue { ptr, ptr } undef, ptr %236, 0
  %238 = insertvalue { ptr, ptr } %237, ptr %233, 1
  %239 = extractvalue { ptr, ptr } %238, 1
  %240 = extractvalue { ptr, ptr } %238, 0
  %241 = call ptr %240(ptr %239, i64 45)
  br label %_llgo_98

_llgo_96:                                         ; preds = %_llgo_94
  br label %_llgo_91

_llgo_97:                                         ; preds = %_llgo_94
  ret ptr %21

_llgo_98:                                         ; preds = %_llgo_103, %_llgo_95
  %242 = call i1 @llvm.coro.done(ptr %241)
  br i1 %242, label %_llgo_102, label %_llgo_99

_llgo_99:                                         ; preds = %_llgo_98
  call void @llvm.coro.resume(ptr %241)
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99
  %243 = call i1 @llvm.coro.done(ptr %241)
  br i1 %243, label %_llgo_102, label %_llgo_101

_llgo_101:                                        ; preds = %_llgo_100
  %244 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %244, label %_llgo_104 [
    i8 0, label %_llgo_103
    i8 1, label %_llgo_5
  ]

_llgo_102:                                        ; preds = %_llgo_100, %_llgo_98
  %245 = call ptr @llvm.coro.promise(ptr %241, i32 8, i1 false)
  %246 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %245, align 8
  %247 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %246)
  %248 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %246, 0
  %249 = getelementptr ptr, ptr %248, i64 3
  %250 = load ptr, ptr %249, align 8
  %251 = insertvalue { ptr, ptr } undef, ptr %250, 0
  %252 = insertvalue { ptr, ptr } %251, ptr %247, 1
  %253 = extractvalue { ptr, ptr } %252, 1
  %254 = extractvalue { ptr, ptr } %252, 0
  %255 = call ptr %254(ptr %253)
  br label %_llgo_105

_llgo_103:                                        ; preds = %_llgo_101
  br label %_llgo_98

_llgo_104:                                        ; preds = %_llgo_101
  ret ptr %21

_llgo_105:                                        ; preds = %_llgo_110, %_llgo_102
  %256 = call i1 @llvm.coro.done(ptr %255)
  br i1 %256, label %_llgo_109, label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105
  call void @llvm.coro.resume(ptr %255)
  br label %_llgo_107

_llgo_107:                                        ; preds = %_llgo_106
  %257 = call i1 @llvm.coro.done(ptr %255)
  br i1 %257, label %_llgo_109, label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107
  %258 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %258, label %_llgo_111 [
    i8 0, label %_llgo_110
    i8 1, label %_llgo_5
  ]

_llgo_109:                                        ; preds = %_llgo_107, %_llgo_105
  %259 = call ptr @llvm.coro.promise(ptr %255, i32 8, i1 false)
  %260 = load i64, ptr %259, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %260)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %261 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression$coro"()
  br label %_llgo_112

_llgo_110:                                        ; preds = %_llgo_108
  br label %_llgo_105

_llgo_111:                                        ; preds = %_llgo_108
  ret ptr %21

_llgo_112:                                        ; preds = %_llgo_117, %_llgo_109
  %262 = call i1 @llvm.coro.done(ptr %261)
  br i1 %262, label %_llgo_116, label %_llgo_113

_llgo_113:                                        ; preds = %_llgo_112
  call void @llvm.coro.resume(ptr %261)
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113
  %263 = call i1 @llvm.coro.done(ptr %261)
  br i1 %263, label %_llgo_116, label %_llgo_115

_llgo_115:                                        ; preds = %_llgo_114
  %264 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %264, label %_llgo_118 [
    i8 0, label %_llgo_117
    i8 1, label %_llgo_5
  ]

_llgo_116:                                        ; preds = %_llgo_114, %_llgo_112
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %265 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"()
  br label %_llgo_119

_llgo_117:                                        ; preds = %_llgo_115
  br label %_llgo_112

_llgo_118:                                        ; preds = %_llgo_115
  ret ptr %21

_llgo_119:                                        ; preds = %_llgo_124, %_llgo_116
  %266 = call i1 @llvm.coro.done(ptr %265)
  br i1 %266, label %_llgo_123, label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119
  call void @llvm.coro.resume(ptr %265)
  br label %_llgo_121

_llgo_121:                                        ; preds = %_llgo_120
  %267 = call i1 @llvm.coro.done(ptr %265)
  br i1 %267, label %_llgo_123, label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121
  %268 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %268, label %_llgo_125 [
    i8 0, label %_llgo_124
    i8 1, label %_llgo_5
  ]

_llgo_123:                                        ; preds = %_llgo_121, %_llgo_119
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_124:                                        ; preds = %_llgo_122
  br label %_llgo_119

_llgo_125:                                        ; preds = %_llgo_122
  ret ptr %21

_llgo_126:                                        ; preds = %_llgo_4
  br label %_llgo_5

_llgo_127:                                        ; preds = %_llgo_4
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
  %3 = phi i64 [ 0, %_llgo_0 ], [ %25, %_llgo_2 ]
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
  %18 = insertvalue { ptr, ptr } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr } %19, 1
  %21 = extractvalue { ptr, ptr } %19, 0
  %22 = call ptr %21(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  %23 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %3, %24
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_14, %_llgo_1
  %6 = phi i64 [ 0, %_llgo_1 ], [ %38, %_llgo_14 ]
  %7 = phi i64 [ -1, %_llgo_1 ], [ %8, %_llgo_14 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %5
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 0
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call ptr %24(ptr %23)
  br label %_llgo_10

_llgo_4:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %6, ptr %1, align 4
  br label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_0
  %26 = call i64 @llvm.coro.size.i64()
  %27 = call ptr @malloc(i64 %26)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %28 = phi ptr [ null, %_llgo_0 ], [ %27, %_llgo_5 ]
  %29 = call ptr @llvm.coro.begin(token %2, ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_4
  %30 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %30, label %_llgo_18 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_7, %_llgo_13
  %31 = call ptr @llvm.coro.free(token %2, ptr %29)
  call void @free(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_18
  %32 = call i1 @llvm.coro.end(ptr %29, i1 false, token none)
  ret ptr %29

_llgo_10:                                         ; preds = %_llgo_15, %_llgo_3
  %33 = call i1 @llvm.coro.done(ptr %25)
  br i1 %33, label %_llgo_14, label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  call void @llvm.coro.resume(ptr %25)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %34 = call i1 @llvm.coro.done(ptr %25)
  br i1 %34, label %_llgo_14, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %35 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %35, label %_llgo_16 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_8
  ]

_llgo_14:                                         ; preds = %_llgo_12, %_llgo_10
  %36 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %37 = load i64, ptr %36, align 4
  %38 = add i64 %6, %37
  br label %_llgo_2

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_10

_llgo_16:                                         ; preds = %_llgo_13
  ret ptr %29

_llgo_17:                                         ; preds = %_llgo_7
  br label %_llgo_8

_llgo_18:                                         ; preds = %_llgo_7
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
  %2 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$thunk$coro", ptr %2, align 8
  %3 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 0
  %4 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr %5(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %7)
  %8 = call ptr @llvm.coro.promise(ptr %7, i32 8, i1 false)
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %2, i32 0, i32 0
  store i64 99, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 49 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$thunk$coro", ptr %4, align 8
  %5 = getelementptr { ptr, ptr }, ptr %4, i32 0, i32 0
  %6 = getelementptr { ptr, ptr }, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = call ptr %7(ptr %2)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %0, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %15 = call ptr @llvm.coro.free(token %0, ptr %13)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %16 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %17 = call i1 @llvm.coro.done(ptr %9)
  br i1 %17, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %9)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call i1 @llvm.coro.done(ptr %9)
  br i1 %18, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %20 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %21 = load i64, ptr %20, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %13

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound$coro", ptr undef }, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  %8 = call ptr %6(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %8)
  %9 = call ptr @llvm.coro.promise(ptr %8, i32 8, i1 false)
  %10 = load i64, ptr %9, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  unreachable
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %1, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_13
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4, %_llgo_12
  %10 = call ptr @llvm.coro.free(token %1, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_17
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %13 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %12, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %13, align 8
  %14 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound$coro", ptr undef }, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  %17 = call ptr %15(ptr %16)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %20 = call i1 @llvm.coro.done(ptr %17)
  br i1 %20, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %17)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %21 = call i1 @llvm.coro.done(ptr %17)
  br i1 %21, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %23 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %24 = load i64, ptr %23, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %8

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_4
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
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call ptr %8(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %14 = getelementptr ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = insertvalue { ptr, ptr } undef, ptr %15, 0
  %17 = insertvalue { ptr, ptr } %16, ptr %12, 1
  %18 = extractvalue { ptr, ptr } %17, 1
  %19 = extractvalue { ptr, ptr } %17, 0
  %20 = call ptr %19(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %20)
  %21 = call ptr @llvm.coro.promise(ptr %20, i32 8, i1 false)
  %22 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %25 = getelementptr ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = insertvalue { ptr, ptr } undef, ptr %26, 0
  %28 = insertvalue { ptr, ptr } %27, ptr %23, 1
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  %31 = call ptr %30(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %34 = getelementptr ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = insertvalue { ptr, ptr } undef, ptr %35, 0
  %37 = insertvalue { ptr, ptr } %36, ptr %32, 1
  %38 = extractvalue { ptr, ptr } %37, 1
  %39 = extractvalue { ptr, ptr } %37, 0
  %40 = call ptr %39(ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %40)
  %41 = call ptr @llvm.coro.promise(ptr %40, i32 8, i1 false)
  %42 = load i64, ptr %41, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call ptr %10(ptr %9)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %1, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_32
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_36 [
    i8 0, label %_llgo_35
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_35, %_llgo_4, %_llgo_31, %_llgo_24, %_llgo_17, %_llgo_10
  %17 = call ptr @llvm.coro.free(token %1, ptr %15)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_36
  %18 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %19 = call i1 @llvm.coro.done(ptr %11)
  br i1 %19, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %11)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %20 = call i1 @llvm.coro.done(ptr %11)
  br i1 %20, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %22 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %23 = load i64, ptr %22, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %26 = getelementptr ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = insertvalue { ptr, ptr } undef, ptr %27, 0
  %29 = insertvalue { ptr, ptr } %28, ptr %24, 1
  %30 = extractvalue { ptr, ptr } %29, 1
  %31 = extractvalue { ptr, ptr } %29, 0
  %32 = call ptr %31(ptr %30)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %15

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %33 = call i1 @llvm.coro.done(ptr %32)
  br i1 %33, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %32)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %34 = call i1 @llvm.coro.done(ptr %32)
  br i1 %34, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %35 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %35, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  %36 = call ptr @llvm.coro.promise(ptr %32, i32 8, i1 false)
  %37 = load i64, ptr %36, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %40 = getelementptr ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } undef, ptr %41, 0
  %43 = insertvalue { ptr, ptr } %42, ptr %38, 1
  %44 = extractvalue { ptr, ptr } %43, 1
  %45 = extractvalue { ptr, ptr } %43, 0
  %46 = call ptr %45(ptr %44)
  br label %_llgo_21

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %15

_llgo_21:                                         ; preds = %_llgo_26, %_llgo_18
  %47 = call i1 @llvm.coro.done(ptr %46)
  br i1 %47, label %_llgo_25, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  call void @llvm.coro.resume(ptr %46)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %48 = call i1 @llvm.coro.done(ptr %46)
  br i1 %48, label %_llgo_25, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %49 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %49, label %_llgo_27 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_23, %_llgo_21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %52 = getelementptr ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  %54 = insertvalue { ptr, ptr } undef, ptr %53, 0
  %55 = insertvalue { ptr, ptr } %54, ptr %50, 1
  %56 = extractvalue { ptr, ptr } %55, 1
  %57 = extractvalue { ptr, ptr } %55, 0
  %58 = call ptr %57(ptr %56)
  br label %_llgo_28

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %15

_llgo_28:                                         ; preds = %_llgo_33, %_llgo_25
  %59 = call i1 @llvm.coro.done(ptr %58)
  br i1 %59, label %_llgo_32, label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28
  call void @llvm.coro.resume(ptr %58)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29
  %60 = call i1 @llvm.coro.done(ptr %58)
  br i1 %60, label %_llgo_32, label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30
  %61 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %61, label %_llgo_34 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_32:                                         ; preds = %_llgo_30, %_llgo_28
  %62 = call ptr @llvm.coro.promise(ptr %58, i32 8, i1 false)
  %63 = load i64, ptr %62, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_33:                                         ; preds = %_llgo_31
  br label %_llgo_28

_llgo_34:                                         ; preds = %_llgo_31
  ret ptr %15

_llgo_35:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_36:                                         ; preds = %_llgo_4
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
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_6, label %_llgo_7

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %4 = icmp eq ptr %3, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker"
  br i1 %4, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %24, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 43 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro"(ptr %24)
  br label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_28, %_llgo_23, %_llgo_18
  br label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_13
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %9 = icmp eq ptr %8, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker"
  br i1 %9, label %_llgo_21, label %_llgo_22

_llgo_5:                                          ; preds = %_llgo_23
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %35, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro"(ptr %35)
  br label %_llgo_24

_llgo_6:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_6 ]
  %16 = call ptr @llvm.coro.begin(token %1, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_3
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_32 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_31, %_llgo_8, %_llgo_27, %_llgo_17
  %18 = call ptr @llvm.coro.free(token %1, ptr %16)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_32
  %19 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_11:                                         ; preds = %_llgo_1
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %21 = insertvalue { ptr, i1 } undef, ptr %20, 0
  %22 = insertvalue { ptr, i1 } %21, i1 true, 1
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %23 = phi { ptr, i1 } [ %22, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %24 = extractvalue { ptr, i1 } %23, 0
  %25 = extractvalue { ptr, i1 } %23, 1
  br i1 %25, label %_llgo_2, label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_2
  %26 = call i1 @llvm.coro.done(ptr %7)
  br i1 %26, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %7)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %27 = call i1 @llvm.coro.done(ptr %7)
  br i1 %27, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_9
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  %29 = call ptr @llvm.coro.promise(ptr %7, i32 8, i1 false)
  %30 = load i64, ptr %29, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %16

_llgo_21:                                         ; preds = %_llgo_4
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %32 = insertvalue { ptr, i1 } undef, ptr %31, 0
  %33 = insertvalue { ptr, i1 } %32, i1 true, 1
  br label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_4
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_21
  %34 = phi { ptr, i1 } [ %33, %_llgo_21 ], [ zeroinitializer, %_llgo_22 ]
  %35 = extractvalue { ptr, i1 } %34, 0
  %36 = extractvalue { ptr, i1 } %34, 1
  br i1 %36, label %_llgo_5, label %_llgo_3

_llgo_24:                                         ; preds = %_llgo_29, %_llgo_5
  %37 = call i1 @llvm.coro.done(ptr %12)
  br i1 %37, label %_llgo_28, label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24
  call void @llvm.coro.resume(ptr %12)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25
  %38 = call i1 @llvm.coro.done(ptr %12)
  br i1 %38, label %_llgo_28, label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_30 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_9
  ]

_llgo_28:                                         ; preds = %_llgo_26, %_llgo_24
  %40 = call ptr @llvm.coro.promise(ptr %12, i32 8, i1 false)
  %41 = load i64, ptr %40, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_29:                                         ; preds = %_llgo_27
  br label %_llgo_24

_llgo_30:                                         ; preds = %_llgo_27
  ret ptr %16

_llgo_31:                                         ; preds = %_llgo_8
  br label %_llgo_9

_llgo_32:                                         ; preds = %_llgo_8
  br label %_llgo_10
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

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

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*SyncWorker).Work$coro"(ptr %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %12 = call i1 @llvm.coro.done(ptr %4)
  br i1 %12, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %4)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %13 = call i1 @llvm.coro.done(ptr %4)
  br i1 %13, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %15 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %16 = load i64, ptr %15, align 4
  store i64 %16, ptr %1, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %8

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.Worker.Work$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call ptr %13(ptr %12)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %3, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %20 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %21 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %22 = call i1 @llvm.coro.done(ptr %14)
  br i1 %22, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %14)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %23 = call i1 @llvm.coro.done(ptr %14)
  br i1 %23, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %25 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %26 = load i64, ptr %25, align 4
  store i64 %26, ptr %2, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %18

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.(*AsyncWorker).Work$coro"(ptr %0)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %12 = call i1 @llvm.coro.done(ptr %4)
  br i1 %12, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %4)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %13 = call i1 @llvm.coro.done(ptr %4)
  br i1 %13, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %15 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %16 = load i64, ptr %15, align 4
  store i64 %16, ptr %1, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %8

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
