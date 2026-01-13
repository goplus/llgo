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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_9, %_llgo_1, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_12, %_llgo_11, %_llgo_9, %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_13, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_8
  %25 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_5
  ]

_llgo_10:                                         ; preds = %_llgo_9
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %28, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_10
  %30 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %0, i32 0, i32 0
  %34 = load i64, ptr %33, align 4
  %35 = mul i64 %32, %34
  %36 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %35, ptr %36, align 4
  br label %_llgo_5

_llgo_13:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %0, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %15, i32 0, i32 0
  store i64 %1, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %15, 1
  %20 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %2, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %20, align 8
  br label %_llgo_5

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = add i64 %16, %1
  %18 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %17, ptr %18, align 4
  br label %_llgo_5

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = mul i64 %17, 4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  br label %_llgo_5

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %15 = call i1 @llvm.coro.end(ptr %13, i1 false, token none)
  ret ptr %13

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %17 = call ptr @llvm.coro.free(token %3, ptr %13)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %12 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %13 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %16 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %3, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %17 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %4, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %10)
  %6 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %6, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_9, %_llgo_1, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_12, %_llgo_11, %_llgo_9, %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_13, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_8
  %25 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_5
  ]

_llgo_10:                                         ; preds = %_llgo_9
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %28, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_10
  %30 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %32, ptr %33, align 4
  br label %_llgo_5

_llgo_13:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %31)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_7 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_8
  ]

_llgo_2:                                          ; preds = %_llgo_15, %_llgo_11
  %6 = phi i64 [ 0, %_llgo_11 ], [ %45, %_llgo_15 ]
  %7 = phi i64 [ -1, %_llgo_11 ], [ %8, %_llgo_15 ]
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
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_12, %_llgo_1, %_llgo_6
  %33 = call i1 @llvm.coro.end(ptr %31, i1 false, token none)
  ret ptr %31

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_14, %_llgo_12, %_llgo_1, %_llgo_6
  %34 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %34, label %_llgo_7 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_16, %_llgo_8
  %35 = call ptr @llvm.coro.free(token %3, ptr %31)
  call void @free(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_1
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_12:                                         ; preds = %_llgo_3
  %37 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %37, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %38, ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %26)
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_7 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_8
  ]

_llgo_13:                                         ; preds = %_llgo_12
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %26)
  br i1 %40, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  br label %_llgo_8

_llgo_15:                                         ; preds = %_llgo_13
  %42 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %43 = getelementptr inbounds { ptr, i64 }, ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  call void @llvm.coro.destroy(ptr %26)
  %45 = add i64 %6, %44
  br label %_llgo_2

_llgo_16:                                         ; preds = %_llgo_8
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %8)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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

_llgo_9:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  %5 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %5, label %_llgo_4 [
    i8 0, label %_llgo_8
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
  %10 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_1, %_llgo_3
  %11 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_13, %_llgo_16, %_llgo_14, %_llgo_1, %_llgo_3
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_18, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
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
  br i1 %22, label %_llgo_12, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  unreachable

_llgo_11:                                         ; preds = %_llgo_9
  %25 = call i64 %20(ptr %21)
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_9
  %26 = call ptr %20(ptr %21)
  br label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_17, %_llgo_11
  %27 = phi i64 [ %25, %_llgo_11 ], [ %35, %_llgo_17 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_14:                                         ; preds = %_llgo_12
  %28 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %26)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_14
  %31 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %26)
  br i1 %31, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_15
  %33 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %26)
  br label %_llgo_13

_llgo_18:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %21 = call i1 @llvm.coro.end(ptr %19, i1 false, token none)
  ret ptr %19

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %22 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %23 = call ptr @llvm.coro.free(token %4, ptr %19)
  call void @free(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %24 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %25, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %15)
  %26 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %15)
  br i1 %27, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %28 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %29 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %31, ptr %32, align 4
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_60, %_llgo_56, %_llgo_52, %_llgo_48, %_llgo_44, %_llgo_40, %_llgo_36, %_llgo_32, %_llgo_28, %_llgo_24, %_llgo_20, %_llgo_16, %_llgo_12, %_llgo_8, %_llgo_3
  %25 = call i1 @llvm.coro.end(ptr %23, i1 false, token none)
  ret ptr %23

_llgo_5:                                          ; preds = %_llgo_63, %_llgo_62, %_llgo_60, %_llgo_58, %_llgo_56, %_llgo_54, %_llgo_52, %_llgo_50, %_llgo_48, %_llgo_46, %_llgo_44, %_llgo_42, %_llgo_40, %_llgo_38, %_llgo_36, %_llgo_34, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_3
  %26 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_64
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_64, %_llgo_5
  %27 = call ptr @llvm.coro.free(token %2, ptr %23)
  call void @free(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %28 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %31 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %31, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %33 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 63 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %10, 1
  %39 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncCallWorker$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 18 })
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %40 = call ptr @llvm.coro.promise(ptr %39, i32 8, i1 false)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %41, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %39)
  %42 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %42, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_12
  %43 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %39)
  br i1 %43, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_13
  %45 = call ptr @llvm.coro.promise(ptr %39, i32 8, i1 false)
  %46 = getelementptr inbounds { ptr, i64 }, ptr %45, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %48, i32 0, i32 0
  store i64 30, ptr %49, align 4
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %51, ptr %48, 1
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %52)
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, 0
  %55 = getelementptr ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  %57 = insertvalue { ptr, ptr, i1 } undef, ptr %56, 0
  %58 = insertvalue { ptr, ptr, i1 } %57, ptr %53, 1
  %59 = extractvalue { ptr, ptr, i1 } %58, 1
  %60 = extractvalue { ptr, ptr, i1 } %58, 2
  %61 = extractvalue { ptr, ptr, i1 } %58, 0
  %62 = call ptr %61(ptr %59)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %63 = call ptr @llvm.coro.promise(ptr %62, i32 8, i1 false)
  %64 = getelementptr inbounds { ptr, i64 }, ptr %63, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %64, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %62)
  %65 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %65, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_17:                                         ; preds = %_llgo_16
  %66 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %62)
  br i1 %66, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %67)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_17
  %68 = call ptr @llvm.coro.promise(ptr %62, i32 8, i1 false)
  %69 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  call void @llvm.coro.destroy(ptr %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %71, i32 0, i32 0
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker", ptr %71, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 4 }, ptr %72, align 8
  store i64 50, ptr %73, align 4
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$uP1Vor8XJ9iHE5WHU4cMLWWju6lhlTGs0XA3XW4M2Nc", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.FullWorker")
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %74, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %75, ptr %71, 1
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %76)
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, 0
  %79 = getelementptr ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = insertvalue { ptr, ptr, i1 } undef, ptr %80, 0
  %82 = insertvalue { ptr, ptr, i1 } %81, ptr %77, 1
  %83 = extractvalue { ptr, ptr, i1 } %82, 1
  %84 = extractvalue { ptr, ptr, i1 } %82, 2
  %85 = extractvalue { ptr, ptr, i1 } %82, 0
  %86 = call ptr %85(ptr %83)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19
  %87 = call ptr @llvm.coro.promise(ptr %86, i32 8, i1 false)
  %88 = getelementptr inbounds { ptr, i64 }, ptr %87, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %88, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %86)
  %89 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %89, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_20
  %90 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %86)
  br i1 %90, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %91 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %91)
  br label %_llgo_5

_llgo_23:                                         ; preds = %_llgo_21
  %92 = call ptr @llvm.coro.promise(ptr %86, i32 8, i1 false)
  %93 = getelementptr inbounds { ptr, i64 }, ptr %92, i32 0, i32 1
  %94 = load i64, ptr %93, align 4
  call void @llvm.coro.destroy(ptr %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %76)
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, 0
  %97 = getelementptr ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  %99 = insertvalue { ptr, ptr, i1 } undef, ptr %98, 0
  %100 = insertvalue { ptr, ptr, i1 } %99, ptr %95, 1
  %101 = extractvalue { ptr, ptr, i1 } %100, 1
  %102 = extractvalue { ptr, ptr, i1 } %100, 2
  %103 = extractvalue { ptr, ptr, i1 } %100, 0
  %104 = call ptr %103(ptr %101)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %105 = call ptr @llvm.coro.promise(ptr %104, i32 8, i1 false)
  %106 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %105, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %106, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %104)
  %107 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %107, label %_llgo_4 [
    i8 0, label %_llgo_25
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_24
  %108 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %104)
  br i1 %108, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %109 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %109)
  br label %_llgo_5

_llgo_27:                                         ; preds = %_llgo_25
  %110 = call ptr @llvm.coro.promise(ptr %104, i32 8, i1 false)
  %111 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %110, i32 0, i32 1
  %112 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %111, align 8
  call void @llvm.coro.destroy(ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %76)
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %76, 0
  %115 = getelementptr ptr, ptr %114, i64 4
  %116 = load ptr, ptr %115, align 8
  %117 = insertvalue { ptr, ptr, i1 } undef, ptr %116, 0
  %118 = insertvalue { ptr, ptr, i1 } %117, ptr %113, 1
  %119 = extractvalue { ptr, ptr, i1 } %118, 1
  %120 = extractvalue { ptr, ptr, i1 } %118, 2
  %121 = extractvalue { ptr, ptr, i1 } %118, 0
  %122 = call ptr %121(ptr %119, i64 100)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27
  %123 = call ptr @llvm.coro.promise(ptr %122, i32 8, i1 false)
  %124 = getelementptr inbounds { ptr, i64 }, ptr %123, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %124, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %122)
  %125 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %125, label %_llgo_4 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_28
  %126 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %122)
  br i1 %126, label %_llgo_30, label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_29
  %127 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %127)
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_29
  %128 = call ptr @llvm.coro.promise(ptr %122, i32 8, i1 false)
  %129 = getelementptr inbounds { ptr, i64 }, ptr %128, i32 0, i32 1
  %130 = load i64, ptr %129, align 4
  call void @llvm.coro.destroy(ptr %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %130)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %132 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator", ptr %131, i32 0, i32 0
  store i64 2, ptr %132, align 4
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$tAyKljG6ir-qpy5yHUgfSYkicsmENrq2abMi6L_qyx8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncDelegator")
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %133, 0
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %134, ptr %131, 1
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %136, i32 0, i32 0
  store i64 15, ptr %137, align 4
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %138, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %139, ptr %136, 1
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %135)
  %142 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135, 0
  %143 = getelementptr ptr, ptr %142, i64 3
  %144 = load ptr, ptr %143, align 8
  %145 = insertvalue { ptr, ptr, i1 } undef, ptr %144, 0
  %146 = insertvalue { ptr, ptr, i1 } %145, ptr %141, 1
  %147 = extractvalue { ptr, ptr, i1 } %146, 1
  %148 = extractvalue { ptr, ptr, i1 } %146, 2
  %149 = extractvalue { ptr, ptr, i1 } %146, 0
  %150 = call ptr %149(ptr %147, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %140)
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31
  %151 = call ptr @llvm.coro.promise(ptr %150, i32 8, i1 false)
  %152 = getelementptr inbounds { ptr, i64 }, ptr %151, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %152, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %150)
  %153 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %153, label %_llgo_4 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_33:                                         ; preds = %_llgo_32
  %154 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %150)
  br i1 %154, label %_llgo_34, label %_llgo_35

_llgo_34:                                         ; preds = %_llgo_33
  %155 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %155)
  br label %_llgo_5

_llgo_35:                                         ; preds = %_llgo_33
  %156 = call ptr @llvm.coro.promise(ptr %150, i32 8, i1 false)
  %157 = getelementptr inbounds { ptr, i64 }, ptr %156, i32 0, i32 1
  %158 = load i64, ptr %157, align 4
  call void @llvm.coro.destroy(ptr %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %158)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorkerFactory")
  %161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %160, 0
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %161, ptr %159, 1
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %162)
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %162, 0
  %165 = getelementptr ptr, ptr %164, i64 3
  %166 = load ptr, ptr %165, align 8
  %167 = insertvalue { ptr, ptr, i1 } undef, ptr %166, 0
  %168 = insertvalue { ptr, ptr, i1 } %167, ptr %163, 1
  %169 = extractvalue { ptr, ptr, i1 } %168, 1
  %170 = extractvalue { ptr, ptr, i1 } %168, 2
  %171 = extractvalue { ptr, ptr, i1 } %168, 0
  %172 = call ptr %171(ptr %169, i64 25)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  %173 = call ptr @llvm.coro.promise(ptr %172, i32 8, i1 false)
  %174 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %173, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %174, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %172)
  %175 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %175, label %_llgo_4 [
    i8 0, label %_llgo_37
    i8 1, label %_llgo_5
  ]

_llgo_37:                                         ; preds = %_llgo_36
  %176 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %172)
  br i1 %176, label %_llgo_38, label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_37
  %177 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %177)
  br label %_llgo_5

_llgo_39:                                         ; preds = %_llgo_37
  %178 = call ptr @llvm.coro.promise(ptr %172, i32 8, i1 false)
  %179 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %178, i32 0, i32 1
  %180 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %179, align 8
  call void @llvm.coro.destroy(ptr %172)
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %180)
  %182 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %180, 0
  %183 = getelementptr ptr, ptr %182, i64 3
  %184 = load ptr, ptr %183, align 8
  %185 = insertvalue { ptr, ptr, i1 } undef, ptr %184, 0
  %186 = insertvalue { ptr, ptr, i1 } %185, ptr %181, 1
  %187 = extractvalue { ptr, ptr, i1 } %186, 1
  %188 = extractvalue { ptr, ptr, i1 } %186, 2
  %189 = extractvalue { ptr, ptr, i1 } %186, 0
  %190 = call ptr %189(ptr %187)
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39
  %191 = call ptr @llvm.coro.promise(ptr %190, i32 8, i1 false)
  %192 = getelementptr inbounds { ptr, i64 }, ptr %191, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %192, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %190)
  %193 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %193, label %_llgo_4 [
    i8 0, label %_llgo_41
    i8 1, label %_llgo_5
  ]

_llgo_41:                                         ; preds = %_llgo_40
  %194 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %190)
  br i1 %194, label %_llgo_42, label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_41
  %195 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %190)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %190)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %195)
  br label %_llgo_5

_llgo_43:                                         ; preds = %_llgo_41
  %196 = call ptr @llvm.coro.promise(ptr %190, i32 8, i1 false)
  %197 = getelementptr inbounds { ptr, i64 }, ptr %196, i32 0, i32 1
  %198 = load i64, ptr %197, align 4
  call void @llvm.coro.destroy(ptr %190)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %200 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %199, i32 0, i32 0
  store i64 35, ptr %200, align 4
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %202 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %201, 0
  %203 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %202, ptr %199, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %203)
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %205 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %204, i32 0, i32 0
  store i64 40, ptr %205, align 4
  %206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %206, 0
  %208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %207, ptr %204, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testTypeAssertion"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %208)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %210 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %209, i64 0
  %211 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %212 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %211, i32 0, i32 0
  store i64 5, ptr %212, align 4
  %213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %213, 0
  %215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %214, ptr %211, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %215, ptr %210, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %209, i64 1
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %218 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %217, i32 0, i32 0
  store i64 10, ptr %218, align 4
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %220 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %219, 0
  %221 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %220, ptr %217, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %221, ptr %216, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %209, i64 2
  %223 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %224 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker", ptr %223, i32 0, i32 0
  store i64 15, ptr %224, align 4
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker")
  %226 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %225, 0
  %227 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %226, ptr %223, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %227, ptr %222, align 8
  %228 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %209, 0
  %229 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, i64 3, 1
  %230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %229, i64 3, 2
  %231 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroiface.processWorkers"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %230)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %231)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 47 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %232 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncProcessWorkers$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %230)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %233 = call ptr @llvm.coro.promise(ptr %232, i32 8, i1 false)
  %234 = getelementptr inbounds { ptr, i64 }, ptr %233, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %234, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %232)
  %235 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %235, label %_llgo_4 [
    i8 0, label %_llgo_45
    i8 1, label %_llgo_5
  ]

_llgo_45:                                         ; preds = %_llgo_44
  %236 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %232)
  br i1 %236, label %_llgo_46, label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_45
  %237 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %232)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %237)
  br label %_llgo_5

_llgo_47:                                         ; preds = %_llgo_45
  %238 = call ptr @llvm.coro.promise(ptr %232, i32 8, i1 false)
  %239 = getelementptr inbounds { ptr, i64 }, ptr %238, i32 0, i32 1
  %240 = load i64, ptr %239, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %242 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %241, i32 0, i32 0
  %243 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker", ptr %241, i32 0, i32 1
  store i64 100, ptr %242, align 4
  store i64 100, ptr %243, align 4
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$oFj2okePGHzDPBNR2olwNCcHvLfdRFMLHeT5eIDn5gU", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.StatefulWorker")
  %245 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %244, 0
  %246 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %245, ptr %241, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testResettableWorker"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %246)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %247 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %248 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %247, i32 0, i32 0
  store i64 60, ptr %248, align 4
  %249 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %249, 0
  %251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %250, ptr %247, 1
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodValue"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %251)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %253 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker", ptr %252, i32 0, i32 0
  store i64 70, ptr %253, align 4
  %254 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f0OsKchMKYwlxxmHRuYD9Ur8o6jUYlO2FUBUfd2zbyA", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker")
  %255 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %254, 0
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %255, ptr %252, 1
  %257 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodValue$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %256)
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47
  %258 = call ptr @llvm.coro.promise(ptr %257, i32 8, i1 false)
  %259 = getelementptr inbounds { ptr }, ptr %258, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %259, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %257)
  %260 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %260, label %_llgo_4 [
    i8 0, label %_llgo_49
    i8 1, label %_llgo_5
  ]

_llgo_49:                                         ; preds = %_llgo_48
  %261 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %257)
  br i1 %261, label %_llgo_50, label %_llgo_51

_llgo_50:                                         ; preds = %_llgo_49
  %262 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %257)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %257)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %262)
  br label %_llgo_5

_llgo_51:                                         ; preds = %_llgo_49
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %263 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %264 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$iFiKWRCKu_6nzvH0CmvtR2Ia0QP99wrW59VB4KTL2_g", ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorkerFactory")
  %265 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %264, 0
  %266 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %265, ptr %263, 1
  %267 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %266)
  %268 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %266, 0
  %269 = getelementptr ptr, ptr %268, i64 3
  %270 = load ptr, ptr %269, align 8
  %271 = insertvalue { ptr, ptr, i1 } undef, ptr %270, 0
  %272 = insertvalue { ptr, ptr, i1 } %271, ptr %267, 1
  %273 = extractvalue { ptr, ptr, i1 } %272, 1
  %274 = extractvalue { ptr, ptr, i1 } %272, 2
  %275 = extractvalue { ptr, ptr, i1 } %272, 0
  %276 = call ptr %275(ptr %273, i64 45)
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51
  %277 = call ptr @llvm.coro.promise(ptr %276, i32 8, i1 false)
  %278 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %277, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %278, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %276)
  %279 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %279, label %_llgo_4 [
    i8 0, label %_llgo_53
    i8 1, label %_llgo_5
  ]

_llgo_53:                                         ; preds = %_llgo_52
  %280 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %276)
  br i1 %280, label %_llgo_54, label %_llgo_55

_llgo_54:                                         ; preds = %_llgo_53
  %281 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %276)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %281)
  br label %_llgo_5

_llgo_55:                                         ; preds = %_llgo_53
  %282 = call ptr @llvm.coro.promise(ptr %276, i32 8, i1 false)
  %283 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %282, i32 0, i32 1
  %284 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %283, align 8
  call void @llvm.coro.destroy(ptr %276)
  %285 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %284)
  %286 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %284, 0
  %287 = getelementptr ptr, ptr %286, i64 3
  %288 = load ptr, ptr %287, align 8
  %289 = insertvalue { ptr, ptr, i1 } undef, ptr %288, 0
  %290 = insertvalue { ptr, ptr, i1 } %289, ptr %285, 1
  %291 = extractvalue { ptr, ptr, i1 } %290, 1
  %292 = extractvalue { ptr, ptr, i1 } %290, 2
  %293 = extractvalue { ptr, ptr, i1 } %290, 0
  %294 = call ptr %293(ptr %291)
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55
  %295 = call ptr @llvm.coro.promise(ptr %294, i32 8, i1 false)
  %296 = getelementptr inbounds { ptr, i64 }, ptr %295, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %296, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %294)
  %297 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %297, label %_llgo_4 [
    i8 0, label %_llgo_57
    i8 1, label %_llgo_5
  ]

_llgo_57:                                         ; preds = %_llgo_56
  %298 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %294)
  br i1 %298, label %_llgo_58, label %_llgo_59

_llgo_58:                                         ; preds = %_llgo_57
  %299 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %294)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %294)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %299)
  br label %_llgo_5

_llgo_59:                                         ; preds = %_llgo_57
  %300 = call ptr @llvm.coro.promise(ptr %294, i32 8, i1 false)
  %301 = getelementptr inbounds { ptr, i64 }, ptr %300, i32 0, i32 1
  %302 = load i64, ptr %301, align 4
  call void @llvm.coro.destroy(ptr %294)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %302)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroiface.testMethodExpression"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %303 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroiface.asyncTestMethodExpression$coro"()
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59
  %304 = call ptr @llvm.coro.promise(ptr %303, i32 8, i1 false)
  %305 = getelementptr inbounds { ptr }, ptr %304, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %305, ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %303)
  %306 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %306, label %_llgo_4 [
    i8 0, label %_llgo_61
    i8 1, label %_llgo_5
  ]

_llgo_61:                                         ; preds = %_llgo_60
  %307 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %303)
  br i1 %307, label %_llgo_62, label %_llgo_63

_llgo_62:                                         ; preds = %_llgo_61
  %308 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %303)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %303)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %308)
  br label %_llgo_5

_llgo_63:                                         ; preds = %_llgo_61
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_64:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_10
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_14, %_llgo_1
  %7 = phi i64 [ 0, %_llgo_1 ], [ %45, %_llgo_14 ]
  %8 = phi i64 [ -1, %_llgo_1 ], [ %9, %_llgo_14 ]
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
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_8
  ]

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_11, %_llgo_6
  %34 = call i1 @llvm.coro.end(ptr %32, i1 false, token none)
  ret ptr %32

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_13, %_llgo_11, %_llgo_6
  %35 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %35, label %_llgo_7 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_15, %_llgo_8
  %36 = call ptr @llvm.coro.free(token %3, ptr %32)
  call void @free(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_6
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_3
  %37 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %37, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %38, ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %27)
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_7 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_8
  ]

_llgo_12:                                         ; preds = %_llgo_11
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %27)
  br i1 %40, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_12
  %42 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %43 = getelementptr inbounds { ptr, i64 }, ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  call void @llvm.coro.destroy(ptr %27)
  %45 = add i64 %7, %44
  br label %_llgo_2

_llgo_15:                                         ; preds = %_llgo_8
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 37 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  br i1 true, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_13, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_12, %_llgo_15, %_llgo_13, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_17, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
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
  br i1 %21, label %_llgo_11, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 126 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %24 = call i64 %19(ptr %20)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_8
  %25 = call ptr %19(ptr %20)
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_16, %_llgo_10
  %26 = phi i64 [ %24, %_llgo_10 ], [ %34, %_llgo_16 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_13:                                         ; preds = %_llgo_11
  %27 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %25)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_13
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %25)
  br i1 %30, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_14
  %32 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @llvm.coro.destroy(ptr %25)
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_20, %_llgo_16, %_llgo_12, %_llgo_8, %_llgo_3
  %20 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_23, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_3
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_24
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_24, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %23 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %14)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %26 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %14)
  br i1 %26, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %28 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  call void @llvm.coro.destroy(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %33 = getelementptr ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = insertvalue { ptr, ptr, i1 } undef, ptr %34, 0
  %36 = insertvalue { ptr, ptr, i1 } %35, ptr %31, 1
  %37 = extractvalue { ptr, ptr, i1 } %36, 1
  %38 = extractvalue { ptr, ptr, i1 } %36, 2
  %39 = extractvalue { ptr, ptr, i1 } %36, 0
  %40 = call ptr %39(ptr %37)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %41 = call ptr @llvm.coro.promise(ptr %40, i32 8, i1 false)
  %42 = getelementptr inbounds { ptr, i64 }, ptr %41, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %42, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %40)
  %43 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %43, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_12
  %44 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %40)
  br i1 %44, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %45 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_13
  %46 = call ptr @llvm.coro.promise(ptr %40, i32 8, i1 false)
  %47 = getelementptr inbounds { ptr, i64 }, ptr %46, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  call void @llvm.coro.destroy(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %51 = getelementptr ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  %53 = insertvalue { ptr, ptr, i1 } undef, ptr %52, 0
  %54 = insertvalue { ptr, ptr, i1 } %53, ptr %49, 1
  %55 = extractvalue { ptr, ptr, i1 } %54, 1
  %56 = extractvalue { ptr, ptr, i1 } %54, 2
  %57 = extractvalue { ptr, ptr, i1 } %54, 0
  %58 = call ptr %57(ptr %55)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %59 = call ptr @llvm.coro.promise(ptr %58, i32 8, i1 false)
  %60 = getelementptr inbounds { ptr }, ptr %59, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %60, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %58)
  %61 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %61, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_17:                                         ; preds = %_llgo_16
  %62 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %58)
  br i1 %62, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %63 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %63)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_17
  call void @llvm.coro.destroy(ptr %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %66 = getelementptr ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = insertvalue { ptr, ptr, i1 } undef, ptr %67, 0
  %69 = insertvalue { ptr, ptr, i1 } %68, ptr %64, 1
  %70 = extractvalue { ptr, ptr, i1 } %69, 1
  %71 = extractvalue { ptr, ptr, i1 } %69, 2
  %72 = extractvalue { ptr, ptr, i1 } %69, 0
  %73 = call ptr %72(ptr %70)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19
  %74 = call ptr @llvm.coro.promise(ptr %73, i32 8, i1 false)
  %75 = getelementptr inbounds { ptr, i64 }, ptr %74, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %75, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %73)
  %76 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %76, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_20
  %77 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %73)
  br i1 %77, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %78 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %78)
  br label %_llgo_5

_llgo_23:                                         ; preds = %_llgo_21
  %79 = call ptr @llvm.coro.promise(ptr %73, i32 8, i1 false)
  %80 = getelementptr inbounds { ptr, i64 }, ptr %79, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  call void @llvm.coro.destroy(ptr %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %81)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %6 = icmp eq ptr %5, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.AsyncWorker"
  br i1 %6, label %_llgo_12, label %_llgo_13

_llgo_2:                                          ; preds = %_llgo_14
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

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_17, %_llgo_2
  br label %_llgo_9

_llgo_4:                                          ; preds = %_llgo_14
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %11 = icmp eq ptr %10, @"*_llgo_github.com/goplus/llgo/cl/_testrt/coroiface.SyncWorker"
  br i1 %11, label %_llgo_15, label %_llgo_16

_llgo_5:                                          ; preds = %_llgo_17
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
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_8 [
    i8 0, label %_llgo_11
    i8 1, label %_llgo_9
  ]

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_9, %_llgo_7
  %20 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_9:                                          ; preds = %_llgo_3, %_llgo_7
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_8 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_10
  ]

_llgo_10:                                         ; preds = %_llgo_18, %_llgo_9
  %22 = call ptr @llvm.coro.free(token %3, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_7
  br label %_llgo_1

_llgo_12:                                         ; preds = %_llgo_1
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %24 = insertvalue { ptr, i1 } undef, ptr %23, 0
  %25 = insertvalue { ptr, i1 } %24, i1 true, 1
  br label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_1
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %26 = phi { ptr, i1 } [ %25, %_llgo_12 ], [ zeroinitializer, %_llgo_13 ]
  %27 = extractvalue { ptr, i1 } %26, 0
  %28 = extractvalue { ptr, i1 } %26, 1
  br i1 %28, label %_llgo_2, label %_llgo_4

_llgo_15:                                         ; preds = %_llgo_4
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %30 = insertvalue { ptr, i1 } undef, ptr %29, 0
  %31 = insertvalue { ptr, i1 } %30, i1 true, 1
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_15
  %32 = phi { ptr, i1 } [ %31, %_llgo_15 ], [ zeroinitializer, %_llgo_16 ]
  %33 = extractvalue { ptr, i1 } %32, 0
  %34 = extractvalue { ptr, i1 } %32, 1
  br i1 %34, label %_llgo_5, label %_llgo_3

_llgo_18:                                         ; preds = %_llgo_9
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

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

_llgo_1:                                          ; preds = %_llgo_7
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
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
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %6 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5, 0
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
  %20 = call ptr @llvm.coro.begin(token %3, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_8, %_llgo_3
  %22 = call i1 @llvm.coro.end(ptr %20, i1 false, token none)
  ret ptr %20

_llgo_5:                                          ; preds = %_llgo_11, %_llgo_10, %_llgo_8, %_llgo_3
  %23 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_12, %_llgo_5
  %24 = call ptr @llvm.coro.free(token %3, ptr %20)
  call void @free(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  %25 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %16)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_9:                                          ; preds = %_llgo_8
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %16)
  br i1 %28, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %30 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %16)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %32, ptr %33, align 4
  br label %_llgo_5

_llgo_12:                                         ; preds = %_llgo_5
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

_llgo_1:                                          ; preds = %_llgo_7
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
  %11 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %12 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: read) }
