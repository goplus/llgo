; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coroglobal'
source_filename = "github.com/goplus/llgo/cl/_testrt/coroglobal"

%"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" = type { ptr, ptr, i1 }
%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" = type { ptr, ptr, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/coroglobal.counter" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync" = global { ptr, ptr, i1 } zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker" = global { ptr, ptr, i1 } zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/coroglobal.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute" = global %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker" = global %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" zeroinitializer, align 8
@0 = private unnamed_addr constant [22 x i8] c"asyncCallGlobal: start", align 1
@1 = private unnamed_addr constant [57 x i8] c"asyncCallGlobal: calling block_on on async global closure", align 1
@2 = private unnamed_addr constant [25 x i8] c"asyncCallGlobal: result =", align 1
@3 = private unnamed_addr constant [21 x i8] c"asyncCallGlobal: done", align 1
@4 = private unnamed_addr constant [55 x i8] c"callGlobalSync: calling block_on on sync global closure", align 1
@5 = private unnamed_addr constant [24 x i8] c"callGlobalSync: result =", align 1
@6 = private unnamed_addr constant [58 x i8] c"callGlobalWorker: calling block_on on async global closure", align 1
@7 = private unnamed_addr constant [26 x i8] c"callGlobalWorker: result =", align 1
@8 = private unnamed_addr constant [18 x i8] c"chainedCall: start", align 1
@9 = private unnamed_addr constant [38 x i8] c"chainedCall: calling block_on on inner", align 1
@10 = private unnamed_addr constant [27 x i8] c"chainedCall: final result =", align 1
@11 = private unnamed_addr constant [33 x i8] c"inner: calling block_on on global", align 1
@12 = private unnamed_addr constant [15 x i8] c"closureAsParam:", align 1
@13 = private unnamed_addr constant [24 x i8] c"closureAsParam: result =", align 1
@14 = private unnamed_addr constant [42 x i8] c"closureAsReturn: creating closure with x =", align 1
@15 = private unnamed_addr constant [21 x i8] c"returned closure: x =", align 1
@16 = private unnamed_addr constant [26 x i8] c"closureCallsClosure: start", align 1
@17 = private unnamed_addr constant [35 x i8] c"closureCallsClosure: final result =", align 1
@18 = private unnamed_addr constant [16 x i8] c"innerFn: running", align 1
@19 = private unnamed_addr constant [37 x i8] c"outerFn: calling innerFn via block_on", align 1
@20 = private unnamed_addr constant [25 x i8] c"outerFn: innerFn returned", align 1
@21 = private unnamed_addr constant [58 x i8] c"createAndStoreSyncWorker: storing sync closure with base =", align 1
@22 = private unnamed_addr constant [28 x i8] c"globalSync: computing result", align 1
@23 = private unnamed_addr constant [26 x i8] c"globalSync: done, result =", align 1
@24 = private unnamed_addr constant [61 x i8] c"createAndStoreWorker: storing async closure with multiplier =", align 1
@25 = private unnamed_addr constant [33 x i8] c"globalWorker: start, multiplier =", align 1
@26 = private unnamed_addr constant [28 x i8] c"globalWorker: done, result =", align 1
@27 = private unnamed_addr constant [19 x i8] c"loopClosures: start", align 1
@28 = private unnamed_addr constant [13 x i8] c"loop result =", align 1
@29 = private unnamed_addr constant [21 x i8] c"loopClosures: total =", align 1
@30 = private unnamed_addr constant [18 x i8] c"loop closure idx =", align 1
@31 = private unnamed_addr constant [41 x i8] c"=== Test 1: Store closures in globals ===", align 1
@32 = private unnamed_addr constant [52 x i8] c"\0A=== Test 2: Call async global from sync context ===", align 1
@33 = private unnamed_addr constant [20 x i8] c"main: async result =", align 1
@34 = private unnamed_addr constant [51 x i8] c"\0A=== Test 3: Call sync global from sync context ===", align 1
@35 = private unnamed_addr constant [19 x i8] c"main: sync result =", align 1
@36 = private unnamed_addr constant [51 x i8] c"\0A=== Test 4: Mixed sync/async from sync context ===", align 1
@37 = private unnamed_addr constant [53 x i8] c"\0A=== Test 5: Call async global from async context ===", align 1
@38 = private unnamed_addr constant [38 x i8] c"\0A=== Test 6: Chained closure calls ===", align 1
@39 = private unnamed_addr constant [52 x i8] c"\0A=== Test 7: Mixed sync/async from async context ===", align 1
@40 = private unnamed_addr constant [46 x i8] c"\0A=== Test 8: Nested closures with captures ===", align 1
@41 = private unnamed_addr constant [40 x i8] c"\0A=== Test 9: Closure as return value ===", align 1
@42 = private unnamed_addr constant [31 x i8] c"main: returned closure result =", align 1
@43 = private unnamed_addr constant [38 x i8] c"\0A=== Test 10: Closure as parameter ===", align 1
@44 = private unnamed_addr constant [10 x i8] c"test param", align 1
@45 = private unnamed_addr constant [31 x i8] c"main: closure as param result =", align 1
@46 = private unnamed_addr constant [52 x i8] c"\0A=== Test 11: Multiple closures sharing variable ===", align 1
@47 = private unnamed_addr constant [34 x i8] c"\0A=== Test 12: Closures in loop ===", align 1
@48 = private unnamed_addr constant [39 x i8] c"\0A=== Test 13: Closure calls closure ===", align 1
@49 = private unnamed_addr constant [45 x i8] c"\0A=== Test 14: Named function types (sync) ===", align 1
@50 = private unnamed_addr constant [53 x i8] c"\0A=== Test 15: Named func type as parameter (sync) ===", align 1
@51 = private unnamed_addr constant [46 x i8] c"\0A=== Test 16: Named function types (async) ===", align 1
@52 = private unnamed_addr constant [54 x i8] c"\0A=== Test 17: Named func type as parameter (async) ===", align 1
@53 = private unnamed_addr constant [10 x i8] c"main: done", align 1
@54 = private unnamed_addr constant [16 x i8] c"paramFn: running", align 1
@55 = private unnamed_addr constant [16 x i8] c"mixedCall: start", align 1
@56 = private unnamed_addr constant [31 x i8] c"mixedCall: calling sync closure", align 1
@57 = private unnamed_addr constant [24 x i8] c"mixedCall: sync result =", align 1
@58 = private unnamed_addr constant [32 x i8] c"mixedCall: calling async closure", align 1
@59 = private unnamed_addr constant [25 x i8] c"mixedCall: async result =", align 1
@60 = private unnamed_addr constant [18 x i8] c"mixedCall: total =", align 1
@61 = private unnamed_addr constant [23 x i8] c"multipleClosures: start", align 1
@62 = private unnamed_addr constant [12 x i8] c"after adder:", align 1
@63 = private unnamed_addr constant [14 x i8] c"after doubler:", align 1
@64 = private unnamed_addr constant [18 x i8] c"after adder again:", align 1
@65 = private unnamed_addr constant [19 x i8] c"adder: adding 10 to", align 1
@66 = private unnamed_addr constant [17 x i8] c"doubler: doubling", align 1
@67 = private unnamed_addr constant [21 x i8] c"nestedClosures: start", align 1
@68 = private unnamed_addr constant [24 x i8] c"nestedClosures: result =", align 1
@69 = private unnamed_addr constant [11 x i8] c"level1: a =", align 1
@70 = private unnamed_addr constant [11 x i8] c"level2: a =", align 1
@71 = private unnamed_addr constant [3 x i8] c"b =", align 1
@72 = private unnamed_addr constant [15 x i8] c"level3: a+b+c =", align 1
@73 = private unnamed_addr constant [25 x i8] c"testNamedFuncParam: start", align 1
@74 = private unnamed_addr constant [19 x i8] c"testing typed param", align 1
@75 = private unnamed_addr constant [28 x i8] c"testNamedFuncParam: result =", align 1
@76 = private unnamed_addr constant [10 x i8] c"runWorker:", align 1
@77 = private unnamed_addr constant [17 x i8] c"myWorker: running", align 1
@78 = private unnamed_addr constant [30 x i8] c"testNamedFuncParamAsync: start", align 1
@79 = private unnamed_addr constant [25 x i8] c"testing async typed param", align 1
@80 = private unnamed_addr constant [33 x i8] c"testNamedFuncParamAsync: result =", align 1
@81 = private unnamed_addr constant [15 x i8] c"runWorkerAsync:", align 1
@82 = private unnamed_addr constant [22 x i8] c"myAsyncWorker: running", align 1
@83 = private unnamed_addr constant [25 x i8] c"testNamedFuncTypes: start", align 1
@84 = private unnamed_addr constant [40 x i8] c"testNamedFuncTypes: typedWorker result =", align 1
@85 = private unnamed_addr constant [41 x i8] c"testNamedFuncTypes: typedCompute result =", align 1
@86 = private unnamed_addr constant [40 x i8] c"testNamedFuncTypes: localWorker result =", align 1
@87 = private unnamed_addr constant [27 x i8] c"testNamedFuncTypes: total =", align 1
@88 = private unnamed_addr constant [32 x i8] c"typedWorker: start, multiplier =", align 1
@89 = private unnamed_addr constant [32 x i8] c"typedCompute: computing with x =", align 1
@90 = private unnamed_addr constant [20 x i8] c"localWorker: running", align 1
@91 = private unnamed_addr constant [30 x i8] c"testNamedFuncTypesAsync: start", align 1
@92 = private unnamed_addr constant [45 x i8] c"testNamedFuncTypesAsync: typedWorker result =", align 1
@93 = private unnamed_addr constant [46 x i8] c"testNamedFuncTypesAsync: typedCompute result =", align 1
@94 = private unnamed_addr constant [50 x i8] c"testNamedFuncTypesAsync: asyncLocalWorker result =", align 1
@95 = private unnamed_addr constant [32 x i8] c"testNamedFuncTypesAsync: total =", align 1
@96 = private unnamed_addr constant [25 x i8] c"asyncLocalWorker: running", align 1

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.asyncCallGlobal"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.asyncCallGlobal$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %14 = extractvalue { ptr, ptr, i1 } %13, 0
  %15 = extractvalue { ptr, ptr, i1 } %13, 1
  %16 = extractvalue { ptr, ptr, i1 } %13, 2
  br i1 %16, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %17 = call i64 %14(ptr %15)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %18 = call ptr %14(ptr %15)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %19 = phi i64 [ %17, %_llgo_8 ], [ %32, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %20, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %21 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %22 = call i1 @llvm.coro.done(ptr %18)
  br i1 %22, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %21, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %23 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %26 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %8)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %30 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %18)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 55 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %9
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 55 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %18 = phi i64 [ %16, %_llgo_7 ], [ %32, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %20, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %21 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %22 = call i1 @llvm.coro.done(ptr %17)
  br i1 %22, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %21, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %23 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %11)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %30 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %9
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %18 = phi i64 [ %16, %_llgo_7 ], [ %32, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %20, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %21 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %22 = call i1 @llvm.coro.done(ptr %17)
  br i1 %22, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %21, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %23 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %24, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %11)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %30 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 18 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_12, %_llgo_11, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_15, %_llgo_12, %_llgo_11, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_17, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1$coro"()
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_9
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %13)
  br i1 %14, label %_llgo_15, label %_llgo_16

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_13, %_llgo_7
  %15 = phi i1 [ true, %_llgo_7 ], [ false, %_llgo_11 ], [ false, %_llgo_12 ]
  %16 = call i1 @llvm.coro.done(ptr %13)
  br i1 %16, label %_llgo_8, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr, i64 }, ptr %17, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %18, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  %20 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, i64 }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %8)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_9

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_8
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_8
  %24 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  ret i64 %9
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 33 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %13 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %14 = extractvalue { ptr, ptr, i1 } %13, 0
  %15 = extractvalue { ptr, ptr, i1 } %13, 1
  %16 = extractvalue { ptr, ptr, i1 } %13, 2
  br i1 %16, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %17 = call i64 %14(ptr %15)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %18 = call ptr %14(ptr %15)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %19 = phi i64 [ %17, %_llgo_8 ], [ %33, %_llgo_19 ]
  %20 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %19, ptr %20, align 4
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %21, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %22 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %23 = call i1 @llvm.coro.done(ptr %18)
  br i1 %23, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %22, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %24 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %25, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %26 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %26, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %27 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %8)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %30 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %31 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  call void @llvm.coro.destroy(ptr %18)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam"({ ptr, ptr, i1 } %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue { ptr, ptr, i1 } %0, 0
  %3 = extractvalue { ptr, ptr, i1 } %0, 1
  %4 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %4, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call i64 %2(ptr %3)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call ptr %2(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %6)
  %7 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %8 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  call void @llvm.coro.destroy(ptr %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %10 = phi i64 [ %5, %_llgo_1 ], [ %9, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %10
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam$coro"({ ptr, ptr, i1 } %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 15 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr, ptr, i1 } %0, 0
  %16 = extractvalue { ptr, ptr, i1 } %0, 1
  %17 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %17, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %18 = call i64 %15(ptr %16)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %19 = call ptr %15(ptr %16)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %20 = phi i64 [ %18, %_llgo_8 ], [ %34, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %20, ptr %21, align 4
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %22, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %23 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %24 = call i1 @llvm.coro.done(ptr %19)
  br i1 %24, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %25 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %28 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %10)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %32 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @llvm.coro.destroy(ptr %19)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1$coro", ptr undef, i1 undef }, ptr %3, 1
  %6 = insertvalue { ptr, ptr, i1 } %5, i1 true, 2
  ret { ptr, ptr, i1 } %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, { ptr, ptr, i1 } }, align 8
  %2 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %5, align 4
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1$coro", ptr undef, i1 undef }, ptr %7, 1
  %10 = insertvalue { ptr, ptr, i1 } %9, i1 true, 2
  %11 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %1, i32 0, i32 1
  store { ptr, ptr, i1 } %10, ptr %11, align 8
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %3, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_1
  %17 = getelementptr inbounds { ptr, { ptr, ptr, i1 } }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %3, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = extractvalue { ptr } %1, 0
  %20 = load i64, ptr %19, align 4
  %21 = mul i64 %18, %20
  %22 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %21, ptr %22, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro", ptr null, i1 false }, ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2$coro", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 true, 2
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call i64 %5(ptr %6)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call ptr %5(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  call void @llvm.coro.destroy(ptr %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %13 = phi i64 [ %8, %_llgo_1 ], [ %12, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro", ptr null, i1 false }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2$coro", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 true, 2
  %9 = extractvalue { ptr, ptr, i1 } %8, 0
  %10 = extractvalue { ptr, ptr, i1 } %8, 1
  %11 = extractvalue { ptr, ptr, i1 } %8, 2
  br i1 %11, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %2, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %16 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %17 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %17)
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %19 = call ptr @llvm.coro.free(token %2, ptr %15)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %20 = call i64 %9(ptr %10)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %21 = call ptr %9(ptr %10)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %22 = phi i64 [ %20, %_llgo_7 ], [ %35, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %21)
  br i1 %23, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %24 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %25 = call i1 @llvm.coro.done(ptr %21)
  br i1 %25, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %24, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %21)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %29 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %15)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %33 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 42
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 16 })
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
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 42, ptr %13, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 37 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load { ptr, ptr, i1 }, ptr %15, align 8
  %17 = extractvalue { ptr, ptr, i1 } %16, 0
  %18 = extractvalue { ptr, ptr, i1 } %16, 1
  %19 = extractvalue { ptr, ptr, i1 } %16, 2
  br i1 %19, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %20 = call i64 %17(ptr %18)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %21 = call ptr %17(ptr %18)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %22 = phi i64 [ %20, %_llgo_8 ], [ %37, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = add i64 %22, 8
  %24 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %23, ptr %24, align 4
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %21)
  br i1 %25, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %26 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %27 = call i1 @llvm.coro.done(ptr %21)
  br i1 %27, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %26, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %28 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %21)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %31 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %32, ptr %10)
  %33 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %33, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %35 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr, i64 }, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1", ptr undef, i1 undef }, ptr %3, 1
  %6 = insertvalue { ptr, ptr, i1 } %5, i1 false, 2
  store { ptr, ptr, i1 } %6, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %5, align 4
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1", ptr undef, i1 undef }, ptr %7, 1
  %10 = insertvalue { ptr, ptr, i1 } %9, i1 false, 2
  store { ptr, ptr, i1 } %10, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
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
  %16 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
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

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %2 = add i64 %1, 1
  store i64 %2, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = load i64, ptr %4, align 4
  %6 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %7 = mul i64 %6, 100
  %8 = add i64 %5, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %8
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %7 = add i64 %6, 1
  store i64 %7, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %8 = extractvalue { ptr } %1, 0
  %9 = load i64, ptr %8, align 4
  %10 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %11 = mul i64 %10, 100
  %12 = add i64 %9, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %12, ptr %13, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_2 ]
  %17 = call ptr @llvm.coro.begin(token %4, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %18 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_5:                                          ; preds = %_llgo_1
  %19 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %19)
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %21 = call ptr @llvm.coro.free(token %4, ptr %17)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 61 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1$coro", ptr undef, i1 undef }, ptr %3, 1
  %6 = insertvalue { ptr, ptr, i1 } %5, i1 true, 2
  store { ptr, ptr, i1 } %6, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %5, align 4
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 61 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1$coro", ptr undef, i1 undef }, ptr %7, 1
  %10 = insertvalue { ptr, ptr, i1 } %9, i1 true, 2
  store { ptr, ptr, i1 } %10, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
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
  %16 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
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

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %18 = add i64 %17, 1
  store i64 %18, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %19 = extractvalue { ptr } %1, 0
  %20 = load i64, ptr %19, align 4
  %21 = mul i64 10, %20
  %22 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %23 = mul i64 %21, %22
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %23, ptr %24, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %0, i64 24, i64 3, i64 0, i64 3, i64 3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ 0, %_llgo_0 ], [ %15, %_llgo_2 ]
  %3 = icmp slt i64 %2, 3
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %2, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1$coro", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 true, 2
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %11 = icmp slt i64 %2, 0
  %12 = icmp sge i64 %2, %10
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds { ptr, ptr, i1 }, ptr %9, i64 %2
  store { ptr, ptr, i1 } %8, ptr %14, align 8
  %15 = add i64 %2, 1
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_9, %_llgo_3
  %16 = phi i64 [ 0, %_llgo_3 ], [ %35, %_llgo_9 ]
  %17 = phi i64 [ 0, %_llgo_3 ], [ %36, %_llgo_9 ]
  %18 = icmp slt i64 %17, 3
  br i1 %18, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %21 = icmp slt i64 %17, 0
  %22 = icmp sge i64 %17, %20
  %23 = or i1 %22, %21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %23)
  %24 = getelementptr inbounds { ptr, ptr, i1 }, ptr %19, i64 %17
  %25 = load { ptr, ptr, i1 }, ptr %24, align 8
  %26 = extractvalue { ptr, ptr, i1 } %25, 0
  %27 = extractvalue { ptr, ptr, i1 } %25, 1
  %28 = extractvalue { ptr, ptr, i1 } %25, 2
  br i1 %28, label %_llgo_8, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_7:                                          ; preds = %_llgo_5
  %29 = call i64 %26(ptr %27)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_5
  %30 = call ptr %26(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %30)
  %31 = call ptr @llvm.coro.promise(ptr %30, i32 8, i1 false)
  %32 = getelementptr inbounds { ptr, i64 }, ptr %31, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  call void @llvm.coro.destroy(ptr %30)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %34 = phi i64 [ %29, %_llgo_7 ], [ %33, %_llgo_8 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %35 = add i64 %16, %34
  %36 = add i64 %17, 1
  br label %_llgo_4
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_8, label %_llgo_9

_llgo_1:                                          ; preds = %_llgo_9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %35)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_10 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_11
  ]

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_13
  %5 = phi i64 [ 0, %_llgo_13 ], [ %18, %_llgo_3 ]
  %6 = icmp slt i64 %5, 3
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %5, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr inbounds { ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1$coro", ptr undef, i1 undef }, ptr %8, 1
  %11 = insertvalue { ptr, ptr, i1 } %10, i1 true, 2
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 0
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  %14 = icmp slt i64 %5, 0
  %15 = icmp sge i64 %5, %13
  %16 = or i1 %15, %14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %16)
  %17 = getelementptr inbounds { ptr, ptr, i1 }, ptr %12, i64 %5
  store { ptr, ptr, i1 } %11, ptr %17, align 8
  %18 = add i64 %5, 1
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4
  %19 = phi i64 [ 0, %_llgo_4 ], [ %45, %_llgo_16 ]
  %20 = phi i64 [ 0, %_llgo_4 ], [ %46, %_llgo_16 ]
  %21 = icmp slt i64 %20, 3
  br i1 %21, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  %24 = icmp slt i64 %20, 0
  %25 = icmp sge i64 %20, %23
  %26 = or i1 %25, %24
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %26)
  %27 = getelementptr inbounds { ptr, ptr, i1 }, ptr %22, i64 %20
  %28 = load { ptr, ptr, i1 }, ptr %27, align 8
  %29 = extractvalue { ptr, ptr, i1 } %28, 0
  %30 = extractvalue { ptr, ptr, i1 } %28, 1
  %31 = extractvalue { ptr, ptr, i1 } %28, 2
  br i1 %31, label %_llgo_15, label %_llgo_14

_llgo_7:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_0
  %32 = call i64 @llvm.coro.size.i64()
  %33 = call ptr @malloc(i64 %32)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %34 = phi ptr [ null, %_llgo_0 ], [ %33, %_llgo_8 ]
  %35 = call ptr @llvm.coro.begin(token %2, ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_11, %_llgo_21, %_llgo_20, %_llgo_1
  %36 = call i1 @llvm.coro.end(ptr %35, i1 false, token none)
  ret ptr %35

_llgo_11:                                         ; preds = %_llgo_7, %_llgo_24, %_llgo_21, %_llgo_20, %_llgo_1
  %37 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %37)
  %38 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %38, label %_llgo_10 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_12
  ]

_llgo_12:                                         ; preds = %_llgo_26, %_llgo_11
  %39 = call ptr @llvm.coro.free(token %2, ptr %35)
  call void @free(ptr %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_10

_llgo_13:                                         ; preds = %_llgo_1
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 72)
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %40, i64 24, i64 3, i64 0, i64 3, i64 3)
  br label %_llgo_2

_llgo_14:                                         ; preds = %_llgo_6
  %42 = call i64 %29(ptr %30)
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_6
  %43 = call ptr %29(ptr %30)
  br label %_llgo_18

_llgo_16:                                         ; preds = %_llgo_25, %_llgo_14
  %44 = phi i64 [ %42, %_llgo_14 ], [ %59, %_llgo_25 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %45 = add i64 %19, %44
  %46 = add i64 %20, 1
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_18
  %47 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %43)
  br i1 %47, label %_llgo_24, label %_llgo_25

_llgo_18:                                         ; preds = %_llgo_23, %_llgo_22, %_llgo_15
  %48 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_20 ], [ false, %_llgo_21 ]
  %49 = call i1 @llvm.coro.done(ptr %43)
  br i1 %49, label %_llgo_17, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18
  br i1 %48, label %_llgo_20, label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_19
  %50 = call ptr @llvm.coro.promise(ptr %43, i32 8, i1 false)
  %51 = getelementptr inbounds { ptr, i64 }, ptr %50, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %51, ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %43)
  %52 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %52, label %_llgo_10 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_11
  ]

_llgo_21:                                         ; preds = %_llgo_19
  %53 = call ptr @llvm.coro.promise(ptr %43, i32 8, i1 false)
  %54 = getelementptr inbounds { ptr, i64 }, ptr %53, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %54, ptr %35)
  %55 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %55, label %_llgo_10 [
    i8 0, label %_llgo_23
    i8 1, label %_llgo_11
  ]

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_18

_llgo_23:                                         ; preds = %_llgo_21
  br label %_llgo_18

_llgo_24:                                         ; preds = %_llgo_17
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %56)
  br label %_llgo_11

_llgo_25:                                         ; preds = %_llgo_17
  %57 = call ptr @llvm.coro.promise(ptr %43, i32 8, i1 false)
  %58 = getelementptr inbounds { ptr, i64 }, ptr %57, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  call void @llvm.coro.destroy(ptr %43)
  br label %_llgo_16

_llgo_26:                                         ; preds = %_llgo_11
  br label %_llgo_12
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = mul i64 %18, 10
  %20 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %19, ptr %20, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker"(i64 2)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker"(i64 1000)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 51 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 51 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 53 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.asyncCallGlobal$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn"(i64 7)
  %7 = extractvalue { ptr, ptr, i1 } %6, 0
  %8 = extractvalue { ptr, ptr, i1 } %6, 1
  %9 = extractvalue { ptr, ptr, i1 } %6, 2
  br i1 %9, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %10 = call i64 %7(ptr %8)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %11)
  %12 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %13 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  call void @llvm.coro.destroy(ptr %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %15 = phi i64 [ %10, %_llgo_1 ], [ %14, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam"({ ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro", ptr null, i1 false }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 53 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker"(i64 2)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker"(i64 1000)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 51 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 51 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 53 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.asyncCallGlobal$coro"()
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %2, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_104, %_llgo_103, %_llgo_95, %_llgo_94, %_llgo_86, %_llgo_85, %_llgo_77, %_llgo_76, %_llgo_68, %_llgo_67, %_llgo_59, %_llgo_58, %_llgo_50, %_llgo_49, %_llgo_41, %_llgo_40, %_llgo_29, %_llgo_28, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_108, %_llgo_107, %_llgo_104, %_llgo_103, %_llgo_98, %_llgo_95, %_llgo_94, %_llgo_89, %_llgo_86, %_llgo_85, %_llgo_80, %_llgo_77, %_llgo_76, %_llgo_71, %_llgo_68, %_llgo_67, %_llgo_62, %_llgo_59, %_llgo_58, %_llgo_53, %_llgo_50, %_llgo_49, %_llgo_44, %_llgo_41, %_llgo_40, %_llgo_32, %_llgo_29, %_llgo_28, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %12 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_109
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_109, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %2, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %15 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %6)
  br i1 %15, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %16 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %17 = call i1 @llvm.coro.done(ptr %6)
  br i1 %17, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %16, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %19 = getelementptr inbounds { ptr }, ptr %18, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %19, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  %20 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %20, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %21 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %22 = getelementptr inbounds { ptr }, ptr %21, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %22, ptr %10)
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$coro"()
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %26 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %25)
  br i1 %26, label %_llgo_23, label %_llgo_24

_llgo_17:                                         ; preds = %_llgo_22, %_llgo_21, %_llgo_15
  %27 = phi i1 [ true, %_llgo_15 ], [ false, %_llgo_19 ], [ false, %_llgo_20 ]
  %28 = call i1 @llvm.coro.done(ptr %25)
  br i1 %28, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  br i1 %27, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %29 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %25)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %32 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr }, ptr %32, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %33, ptr %10)
  %34 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %34, label %_llgo_4 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_5
  ]

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_17

_llgo_22:                                         ; preds = %_llgo_20
  br label %_llgo_17

_llgo_23:                                         ; preds = %_llgo_16
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  br label %_llgo_5

_llgo_24:                                         ; preds = %_llgo_16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$coro"()
  br label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_26
  %38 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %37)
  br i1 %38, label %_llgo_32, label %_llgo_33

_llgo_26:                                         ; preds = %_llgo_31, %_llgo_30, %_llgo_24
  %39 = phi i1 [ true, %_llgo_24 ], [ false, %_llgo_28 ], [ false, %_llgo_29 ]
  %40 = call i1 @llvm.coro.done(ptr %37)
  br i1 %40, label %_llgo_25, label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26
  br i1 %39, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %41 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %42 = getelementptr inbounds { ptr }, ptr %41, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %42, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %37)
  %43 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %43, label %_llgo_4 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_29:                                         ; preds = %_llgo_27
  %44 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %45 = getelementptr inbounds { ptr }, ptr %44, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %45, ptr %10)
  %46 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %46, label %_llgo_4 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_5
  ]

_llgo_30:                                         ; preds = %_llgo_28
  br label %_llgo_26

_llgo_31:                                         ; preds = %_llgo_29
  br label %_llgo_26

_llgo_32:                                         ; preds = %_llgo_25
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  br label %_llgo_5

_llgo_33:                                         ; preds = %_llgo_25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %48 = call { ptr, ptr, i1 } @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn"(i64 7)
  %49 = extractvalue { ptr, ptr, i1 } %48, 0
  %50 = extractvalue { ptr, ptr, i1 } %48, 1
  %51 = extractvalue { ptr, ptr, i1 } %48, 2
  br i1 %51, label %_llgo_35, label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33
  %52 = call i64 %49(ptr %50)
  br label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_33
  %53 = call ptr %49(ptr %50)
  br label %_llgo_38

_llgo_36:                                         ; preds = %_llgo_45, %_llgo_34
  %54 = phi i64 [ %52, %_llgo_34 ], [ %68, %_llgo_45 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %55 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam$coro"({ ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro", ptr null, i1 false }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 })
  br label %_llgo_47

_llgo_37:                                         ; preds = %_llgo_38
  %56 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %53)
  br i1 %56, label %_llgo_44, label %_llgo_45

_llgo_38:                                         ; preds = %_llgo_43, %_llgo_42, %_llgo_35
  %57 = phi i1 [ true, %_llgo_35 ], [ false, %_llgo_40 ], [ false, %_llgo_41 ]
  %58 = call i1 @llvm.coro.done(ptr %53)
  br i1 %58, label %_llgo_37, label %_llgo_39

_llgo_39:                                         ; preds = %_llgo_38
  br i1 %57, label %_llgo_40, label %_llgo_41

_llgo_40:                                         ; preds = %_llgo_39
  %59 = call ptr @llvm.coro.promise(ptr %53, i32 8, i1 false)
  %60 = getelementptr inbounds { ptr, i64 }, ptr %59, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %60, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %53)
  %61 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %61, label %_llgo_4 [
    i8 0, label %_llgo_42
    i8 1, label %_llgo_5
  ]

_llgo_41:                                         ; preds = %_llgo_39
  %62 = call ptr @llvm.coro.promise(ptr %53, i32 8, i1 false)
  %63 = getelementptr inbounds { ptr, i64 }, ptr %62, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %63, ptr %10)
  %64 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %64, label %_llgo_4 [
    i8 0, label %_llgo_43
    i8 1, label %_llgo_5
  ]

_llgo_42:                                         ; preds = %_llgo_40
  br label %_llgo_38

_llgo_43:                                         ; preds = %_llgo_41
  br label %_llgo_38

_llgo_44:                                         ; preds = %_llgo_37
  %65 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %65)
  br label %_llgo_5

_llgo_45:                                         ; preds = %_llgo_37
  %66 = call ptr @llvm.coro.promise(ptr %53, i32 8, i1 false)
  %67 = getelementptr inbounds { ptr, i64 }, ptr %66, i32 0, i32 1
  %68 = load i64, ptr %67, align 4
  call void @llvm.coro.destroy(ptr %53)
  br label %_llgo_36

_llgo_46:                                         ; preds = %_llgo_47
  %69 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %55)
  br i1 %69, label %_llgo_53, label %_llgo_54

_llgo_47:                                         ; preds = %_llgo_52, %_llgo_51, %_llgo_36
  %70 = phi i1 [ true, %_llgo_36 ], [ false, %_llgo_49 ], [ false, %_llgo_50 ]
  %71 = call i1 @llvm.coro.done(ptr %55)
  br i1 %71, label %_llgo_46, label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47
  br i1 %70, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %72 = call ptr @llvm.coro.promise(ptr %55, i32 8, i1 false)
  %73 = getelementptr inbounds { ptr, i64 }, ptr %72, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %73, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %55)
  %74 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %74, label %_llgo_4 [
    i8 0, label %_llgo_51
    i8 1, label %_llgo_5
  ]

_llgo_50:                                         ; preds = %_llgo_48
  %75 = call ptr @llvm.coro.promise(ptr %55, i32 8, i1 false)
  %76 = getelementptr inbounds { ptr, i64 }, ptr %75, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %76, ptr %10)
  %77 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %77, label %_llgo_4 [
    i8 0, label %_llgo_52
    i8 1, label %_llgo_5
  ]

_llgo_51:                                         ; preds = %_llgo_49
  br label %_llgo_47

_llgo_52:                                         ; preds = %_llgo_50
  br label %_llgo_47

_llgo_53:                                         ; preds = %_llgo_46
  %78 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %78)
  br label %_llgo_5

_llgo_54:                                         ; preds = %_llgo_46
  %79 = call ptr @llvm.coro.promise(ptr %55, i32 8, i1 false)
  %80 = getelementptr inbounds { ptr, i64 }, ptr %79, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %81)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %82 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$coro"()
  br label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_56
  %83 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %82)
  br i1 %83, label %_llgo_62, label %_llgo_63

_llgo_56:                                         ; preds = %_llgo_61, %_llgo_60, %_llgo_54
  %84 = phi i1 [ true, %_llgo_54 ], [ false, %_llgo_58 ], [ false, %_llgo_59 ]
  %85 = call i1 @llvm.coro.done(ptr %82)
  br i1 %85, label %_llgo_55, label %_llgo_57

_llgo_57:                                         ; preds = %_llgo_56
  br i1 %84, label %_llgo_58, label %_llgo_59

_llgo_58:                                         ; preds = %_llgo_57
  %86 = call ptr @llvm.coro.promise(ptr %82, i32 8, i1 false)
  %87 = getelementptr inbounds { ptr }, ptr %86, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %87, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %82)
  %88 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %88, label %_llgo_4 [
    i8 0, label %_llgo_60
    i8 1, label %_llgo_5
  ]

_llgo_59:                                         ; preds = %_llgo_57
  %89 = call ptr @llvm.coro.promise(ptr %82, i32 8, i1 false)
  %90 = getelementptr inbounds { ptr }, ptr %89, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %90, ptr %10)
  %91 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %91, label %_llgo_4 [
    i8 0, label %_llgo_61
    i8 1, label %_llgo_5
  ]

_llgo_60:                                         ; preds = %_llgo_58
  br label %_llgo_56

_llgo_61:                                         ; preds = %_llgo_59
  br label %_llgo_56

_llgo_62:                                         ; preds = %_llgo_55
  %92 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %82)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %82)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %92)
  br label %_llgo_5

_llgo_63:                                         ; preds = %_llgo_55
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %93 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$coro"()
  br label %_llgo_65

_llgo_64:                                         ; preds = %_llgo_65
  %94 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %93)
  br i1 %94, label %_llgo_71, label %_llgo_72

_llgo_65:                                         ; preds = %_llgo_70, %_llgo_69, %_llgo_63
  %95 = phi i1 [ true, %_llgo_63 ], [ false, %_llgo_67 ], [ false, %_llgo_68 ]
  %96 = call i1 @llvm.coro.done(ptr %93)
  br i1 %96, label %_llgo_64, label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65
  br i1 %95, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %97 = call ptr @llvm.coro.promise(ptr %93, i32 8, i1 false)
  %98 = getelementptr inbounds { ptr }, ptr %97, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %98, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %93)
  %99 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %99, label %_llgo_4 [
    i8 0, label %_llgo_69
    i8 1, label %_llgo_5
  ]

_llgo_68:                                         ; preds = %_llgo_66
  %100 = call ptr @llvm.coro.promise(ptr %93, i32 8, i1 false)
  %101 = getelementptr inbounds { ptr }, ptr %100, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %101, ptr %10)
  %102 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %102, label %_llgo_4 [
    i8 0, label %_llgo_70
    i8 1, label %_llgo_5
  ]

_llgo_69:                                         ; preds = %_llgo_67
  br label %_llgo_65

_llgo_70:                                         ; preds = %_llgo_68
  br label %_llgo_65

_llgo_71:                                         ; preds = %_llgo_64
  %103 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %103)
  br label %_llgo_5

_llgo_72:                                         ; preds = %_llgo_64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %104 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$coro"()
  br label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_74
  %105 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %104)
  br i1 %105, label %_llgo_80, label %_llgo_81

_llgo_74:                                         ; preds = %_llgo_79, %_llgo_78, %_llgo_72
  %106 = phi i1 [ true, %_llgo_72 ], [ false, %_llgo_76 ], [ false, %_llgo_77 ]
  %107 = call i1 @llvm.coro.done(ptr %104)
  br i1 %107, label %_llgo_73, label %_llgo_75

_llgo_75:                                         ; preds = %_llgo_74
  br i1 %106, label %_llgo_76, label %_llgo_77

_llgo_76:                                         ; preds = %_llgo_75
  %108 = call ptr @llvm.coro.promise(ptr %104, i32 8, i1 false)
  %109 = getelementptr inbounds { ptr }, ptr %108, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %109, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %104)
  %110 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %110, label %_llgo_4 [
    i8 0, label %_llgo_78
    i8 1, label %_llgo_5
  ]

_llgo_77:                                         ; preds = %_llgo_75
  %111 = call ptr @llvm.coro.promise(ptr %104, i32 8, i1 false)
  %112 = getelementptr inbounds { ptr }, ptr %111, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %112, ptr %10)
  %113 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %113, label %_llgo_4 [
    i8 0, label %_llgo_79
    i8 1, label %_llgo_5
  ]

_llgo_78:                                         ; preds = %_llgo_76
  br label %_llgo_74

_llgo_79:                                         ; preds = %_llgo_77
  br label %_llgo_74

_llgo_80:                                         ; preds = %_llgo_73
  %114 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %114)
  br label %_llgo_5

_llgo_81:                                         ; preds = %_llgo_73
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 53 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %115 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$coro"()
  br label %_llgo_83

_llgo_82:                                         ; preds = %_llgo_83
  %116 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %115)
  br i1 %116, label %_llgo_89, label %_llgo_90

_llgo_83:                                         ; preds = %_llgo_88, %_llgo_87, %_llgo_81
  %117 = phi i1 [ true, %_llgo_81 ], [ false, %_llgo_85 ], [ false, %_llgo_86 ]
  %118 = call i1 @llvm.coro.done(ptr %115)
  br i1 %118, label %_llgo_82, label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83
  br i1 %117, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %119 = call ptr @llvm.coro.promise(ptr %115, i32 8, i1 false)
  %120 = getelementptr inbounds { ptr }, ptr %119, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %120, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %115)
  %121 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %121, label %_llgo_4 [
    i8 0, label %_llgo_87
    i8 1, label %_llgo_5
  ]

_llgo_86:                                         ; preds = %_llgo_84
  %122 = call ptr @llvm.coro.promise(ptr %115, i32 8, i1 false)
  %123 = getelementptr inbounds { ptr }, ptr %122, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %123, ptr %10)
  %124 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %124, label %_llgo_4 [
    i8 0, label %_llgo_88
    i8 1, label %_llgo_5
  ]

_llgo_87:                                         ; preds = %_llgo_85
  br label %_llgo_83

_llgo_88:                                         ; preds = %_llgo_86
  br label %_llgo_83

_llgo_89:                                         ; preds = %_llgo_82
  %125 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %125)
  br label %_llgo_5

_llgo_90:                                         ; preds = %_llgo_82
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %126 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$coro"()
  br label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_92
  %127 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %126)
  br i1 %127, label %_llgo_98, label %_llgo_99

_llgo_92:                                         ; preds = %_llgo_97, %_llgo_96, %_llgo_90
  %128 = phi i1 [ true, %_llgo_90 ], [ false, %_llgo_94 ], [ false, %_llgo_95 ]
  %129 = call i1 @llvm.coro.done(ptr %126)
  br i1 %129, label %_llgo_91, label %_llgo_93

_llgo_93:                                         ; preds = %_llgo_92
  br i1 %128, label %_llgo_94, label %_llgo_95

_llgo_94:                                         ; preds = %_llgo_93
  %130 = call ptr @llvm.coro.promise(ptr %126, i32 8, i1 false)
  %131 = getelementptr inbounds { ptr }, ptr %130, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %131, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %126)
  %132 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %132, label %_llgo_4 [
    i8 0, label %_llgo_96
    i8 1, label %_llgo_5
  ]

_llgo_95:                                         ; preds = %_llgo_93
  %133 = call ptr @llvm.coro.promise(ptr %126, i32 8, i1 false)
  %134 = getelementptr inbounds { ptr }, ptr %133, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %134, ptr %10)
  %135 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %135, label %_llgo_4 [
    i8 0, label %_llgo_97
    i8 1, label %_llgo_5
  ]

_llgo_96:                                         ; preds = %_llgo_94
  br label %_llgo_92

_llgo_97:                                         ; preds = %_llgo_95
  br label %_llgo_92

_llgo_98:                                         ; preds = %_llgo_91
  %136 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %136)
  br label %_llgo_5

_llgo_99:                                         ; preds = %_llgo_91
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %137 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$coro"()
  br label %_llgo_101

_llgo_100:                                        ; preds = %_llgo_101
  %138 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %137)
  br i1 %138, label %_llgo_107, label %_llgo_108

_llgo_101:                                        ; preds = %_llgo_106, %_llgo_105, %_llgo_99
  %139 = phi i1 [ true, %_llgo_99 ], [ false, %_llgo_103 ], [ false, %_llgo_104 ]
  %140 = call i1 @llvm.coro.done(ptr %137)
  br i1 %140, label %_llgo_100, label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101
  br i1 %139, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %141 = call ptr @llvm.coro.promise(ptr %137, i32 8, i1 false)
  %142 = getelementptr inbounds { ptr }, ptr %141, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %142, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %137)
  %143 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %143, label %_llgo_4 [
    i8 0, label %_llgo_105
    i8 1, label %_llgo_5
  ]

_llgo_104:                                        ; preds = %_llgo_102
  %144 = call ptr @llvm.coro.promise(ptr %137, i32 8, i1 false)
  %145 = getelementptr inbounds { ptr }, ptr %144, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %145, ptr %10)
  %146 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %146, label %_llgo_4 [
    i8 0, label %_llgo_106
    i8 1, label %_llgo_5
  ]

_llgo_105:                                        ; preds = %_llgo_103
  br label %_llgo_101

_llgo_106:                                        ; preds = %_llgo_104
  br label %_llgo_101

_llgo_107:                                        ; preds = %_llgo_100
  %147 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %147)
  br label %_llgo_5

_llgo_108:                                        ; preds = %_llgo_100
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_109:                                        ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.main$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 123
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 16 })
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
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 123, ptr %13, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %1 = extractvalue { ptr, ptr, i1 } %0, 0
  %2 = extractvalue { ptr, ptr, i1 } %0, 1
  %3 = extractvalue { ptr, ptr, i1 } %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %11 = extractvalue { ptr, ptr, i1 } %10, 0
  %12 = extractvalue { ptr, ptr, i1 } %10, 1
  %13 = extractvalue { ptr, ptr, i1 } %10, 2
  br i1 %13, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %14 = call i64 %11(ptr %12)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %15 = call ptr %11(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %15)
  %16 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr, i64 }, ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %15)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = phi i64 [ %14, %_llgo_4 ], [ %18, %_llgo_5 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = add i64 %9, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %2, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_26, %_llgo_25, %_llgo_14, %_llgo_13
  %12 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_29, %_llgo_26, %_llgo_25, %_llgo_17, %_llgo_14, %_llgo_13
  %13 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %13)
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_31
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_31, %_llgo_5
  %15 = call ptr @llvm.coro.free(token %2, ptr %11)
  call void @free(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %16 = call i64 %5(ptr %6)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %17 = call ptr %5(ptr %6)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %18 = phi i64 [ %16, %_llgo_7 ], [ %35, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = load { ptr, ptr, i1 }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %20 = extractvalue { ptr, ptr, i1 } %19, 0
  %21 = extractvalue { ptr, ptr, i1 } %19, 1
  %22 = extractvalue { ptr, ptr, i1 } %19, 2
  br i1 %22, label %_llgo_20, label %_llgo_19

_llgo_10:                                         ; preds = %_llgo_11
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %17)
  br i1 %23, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %24 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %25 = call i1 @llvm.coro.done(ptr %17)
  br i1 %25, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %24, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %26 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %27 = getelementptr inbounds { ptr, i64 }, ptr %26, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %27, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %17)
  %28 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %29 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %11)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %33 = call ptr @llvm.coro.promise(ptr %17, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @llvm.coro.destroy(ptr %17)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_9
  %36 = call i64 %20(ptr %21)
  br label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_9
  %37 = call ptr %20(ptr %21)
  br label %_llgo_23

_llgo_21:                                         ; preds = %_llgo_30, %_llgo_19
  %38 = phi i64 [ %36, %_llgo_19 ], [ %52, %_llgo_30 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = add i64 %18, %38
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_23
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %37)
  br i1 %40, label %_llgo_29, label %_llgo_30

_llgo_23:                                         ; preds = %_llgo_28, %_llgo_27, %_llgo_20
  %41 = phi i1 [ true, %_llgo_20 ], [ false, %_llgo_25 ], [ false, %_llgo_26 ]
  %42 = call i1 @llvm.coro.done(ptr %37)
  br i1 %42, label %_llgo_22, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  br i1 %41, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %43 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr, i64 }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %37)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_4 [
    i8 0, label %_llgo_27
    i8 1, label %_llgo_5
  ]

_llgo_26:                                         ; preds = %_llgo_24
  %46 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %47 = getelementptr inbounds { ptr, i64 }, ptr %46, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %47, ptr %11)
  %48 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %48, label %_llgo_4 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25
  br label %_llgo_23

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_23

_llgo_29:                                         ; preds = %_llgo_22
  %49 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  br label %_llgo_5

_llgo_30:                                         ; preds = %_llgo_22
  %50 = call ptr @llvm.coro.promise(ptr %37, i32 8, i1 false)
  %51 = getelementptr inbounds { ptr, i64 }, ptr %50, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  call void @llvm.coro.destroy(ptr %37)
  br label %_llgo_21

_llgo_31:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 23 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1$coro", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 true, 2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %0, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2$coro", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 true, 2
  %9 = extractvalue { ptr, ptr, i1 } %4, 0
  %10 = extractvalue { ptr, ptr, i1 } %4, 1
  %11 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %11, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %12 = call i64 %9(ptr %10)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call ptr %9(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %13)
  %14 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %15 = getelementptr inbounds { ptr, i64 }, ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  call void @llvm.coro.destroy(ptr %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %17 = phi i64 [ %12, %_llgo_1 ], [ %16, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = extractvalue { ptr, ptr, i1 } %8, 0
  %19 = extractvalue { ptr, ptr, i1 } %8, 1
  %20 = extractvalue { ptr, ptr, i1 } %8, 2
  br i1 %20, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %21 = call i64 %18(ptr %19)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %22 = call ptr %18(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  %23 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  call void @llvm.coro.destroy(ptr %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %26 = phi i64 [ %21, %_llgo_4 ], [ %25, %_llgo_5 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = extractvalue { ptr, ptr, i1 } %4, 0
  %28 = extractvalue { ptr, ptr, i1 } %4, 1
  %29 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %29, label %_llgo_8, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %30 = call i64 %27(ptr %28)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_6
  %31 = call ptr %27(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %31)
  %32 = call ptr @llvm.coro.promise(ptr %31, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @llvm.coro.destroy(ptr %31)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %35 = phi i64 [ %30, %_llgo_7 ], [ %34, %_llgo_8 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 23 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_39, %_llgo_38, %_llgo_27, %_llgo_26, %_llgo_15, %_llgo_14, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_34, %_llgo_42, %_llgo_39, %_llgo_38, %_llgo_30, %_llgo_27, %_llgo_26, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_44
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_44, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1$coro", ptr undef, i1 undef }, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i1 } %16, i1 true, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %19 = getelementptr inbounds { ptr }, ptr %18, i32 0, i32 0
  store ptr %13, ptr %19, align 8
  %20 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2$coro", ptr undef, i1 undef }, ptr %18, 1
  %21 = insertvalue { ptr, ptr, i1 } %20, i1 true, 2
  %22 = extractvalue { ptr, ptr, i1 } %17, 0
  %23 = extractvalue { ptr, ptr, i1 } %17, 1
  %24 = extractvalue { ptr, ptr, i1 } %17, 2
  br i1 %24, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %25 = call i64 %22(ptr %23)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %26 = call ptr %22(ptr %23)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %27 = phi i64 [ %25, %_llgo_8 ], [ %43, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = extractvalue { ptr, ptr, i1 } %21, 0
  %29 = extractvalue { ptr, ptr, i1 } %21, 1
  %30 = extractvalue { ptr, ptr, i1 } %21, 2
  br i1 %30, label %_llgo_21, label %_llgo_20

_llgo_11:                                         ; preds = %_llgo_12
  %31 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %26)
  br i1 %31, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %32 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %33 = call i1 @llvm.coro.done(ptr %26)
  br i1 %33, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %32, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %34 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, i64 }, ptr %34, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %35, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %26)
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %37 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %37, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %38, ptr %8)
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %41 = call ptr @llvm.coro.promise(ptr %26, i32 8, i1 false)
  %42 = getelementptr inbounds { ptr, i64 }, ptr %41, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  call void @llvm.coro.destroy(ptr %26)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_10
  %44 = call i64 %28(ptr %29)
  br label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_10
  %45 = call ptr %28(ptr %29)
  br label %_llgo_24

_llgo_22:                                         ; preds = %_llgo_31, %_llgo_20
  %46 = phi i64 [ %44, %_llgo_20 ], [ %62, %_llgo_31 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %47 = extractvalue { ptr, ptr, i1 } %17, 0
  %48 = extractvalue { ptr, ptr, i1 } %17, 1
  %49 = extractvalue { ptr, ptr, i1 } %17, 2
  br i1 %49, label %_llgo_33, label %_llgo_32

_llgo_23:                                         ; preds = %_llgo_24
  %50 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %45)
  br i1 %50, label %_llgo_30, label %_llgo_31

_llgo_24:                                         ; preds = %_llgo_29, %_llgo_28, %_llgo_21
  %51 = phi i1 [ true, %_llgo_21 ], [ false, %_llgo_26 ], [ false, %_llgo_27 ]
  %52 = call i1 @llvm.coro.done(ptr %45)
  br i1 %52, label %_llgo_23, label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24
  br i1 %51, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %53 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %54 = getelementptr inbounds { ptr, i64 }, ptr %53, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %54, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %45)
  %55 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %55, label %_llgo_4 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25
  %56 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %57 = getelementptr inbounds { ptr, i64 }, ptr %56, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %57, ptr %8)
  %58 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %58, label %_llgo_4 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_5
  ]

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_24

_llgo_29:                                         ; preds = %_llgo_27
  br label %_llgo_24

_llgo_30:                                         ; preds = %_llgo_23
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_23
  %60 = call ptr @llvm.coro.promise(ptr %45, i32 8, i1 false)
  %61 = getelementptr inbounds { ptr, i64 }, ptr %60, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  call void @llvm.coro.destroy(ptr %45)
  br label %_llgo_22

_llgo_32:                                         ; preds = %_llgo_22
  %63 = call i64 %47(ptr %48)
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_22
  %64 = call ptr %47(ptr %48)
  br label %_llgo_36

_llgo_34:                                         ; preds = %_llgo_43, %_llgo_32
  %65 = phi i64 [ %63, %_llgo_32 ], [ %78, %_llgo_43 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_35:                                         ; preds = %_llgo_36
  %66 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %64)
  br i1 %66, label %_llgo_42, label %_llgo_43

_llgo_36:                                         ; preds = %_llgo_41, %_llgo_40, %_llgo_33
  %67 = phi i1 [ true, %_llgo_33 ], [ false, %_llgo_38 ], [ false, %_llgo_39 ]
  %68 = call i1 @llvm.coro.done(ptr %64)
  br i1 %68, label %_llgo_35, label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36
  br i1 %67, label %_llgo_38, label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_37
  %69 = call ptr @llvm.coro.promise(ptr %64, i32 8, i1 false)
  %70 = getelementptr inbounds { ptr, i64 }, ptr %69, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %70, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %64)
  %71 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %71, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  %72 = call ptr @llvm.coro.promise(ptr %64, i32 8, i1 false)
  %73 = getelementptr inbounds { ptr, i64 }, ptr %72, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %73, ptr %8)
  %74 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %74, label %_llgo_4 [
    i8 0, label %_llgo_41
    i8 1, label %_llgo_5
  ]

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_36

_llgo_41:                                         ; preds = %_llgo_39
  br label %_llgo_36

_llgo_42:                                         ; preds = %_llgo_35
  %75 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
  br label %_llgo_5

_llgo_43:                                         ; preds = %_llgo_35
  %76 = call ptr @llvm.coro.promise(ptr %64, i32 8, i1 false)
  %77 = getelementptr inbounds { ptr, i64 }, ptr %76, i32 0, i32 1
  %78 = load i64, ptr %77, align 4
  call void @llvm.coro.destroy(ptr %64)
  br label %_llgo_34

_llgo_44:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = add i64 %18, 10
  %20 = extractvalue { ptr } %1, 0
  store i64 %19, ptr %20, align 4
  %21 = extractvalue { ptr } %1, 0
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %22, ptr %23, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = mul i64 %18, 2
  %20 = extractvalue { ptr } %1, 0
  store i64 %19, ptr %20, align 4
  %21 = extractvalue { ptr } %1, 0
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %22, ptr %23, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$coro", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 true, 2
  %5 = extractvalue { ptr, ptr, i1 } %4, 0
  %6 = extractvalue { ptr, ptr, i1 } %4, 1
  %7 = extractvalue { ptr, ptr, i1 } %4, 2
  br i1 %7, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %8 = call i64 %5(ptr %6)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call ptr %5(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = getelementptr inbounds { ptr, i64 }, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  call void @llvm.coro.destroy(ptr %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %13 = phi i64 [ %8, %_llgo_1 ], [ %12, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 21 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$coro", ptr undef, i1 undef }, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i1 } %16, i1 true, 2
  %18 = extractvalue { ptr, ptr, i1 } %17, 0
  %19 = extractvalue { ptr, ptr, i1 } %17, 1
  %20 = extractvalue { ptr, ptr, i1 } %17, 2
  br i1 %20, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %21 = call i64 %18(ptr %19)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %22 = call ptr %18(ptr %19)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %23 = phi i64 [ %21, %_llgo_8 ], [ %36, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %22)
  br i1 %24, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %25 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %26 = call i1 @llvm.coro.done(ptr %22)
  br i1 %26, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %25, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %27 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %30 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %31, ptr %8)
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %33 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %34 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, i64 }, ptr %34, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  call void @llvm.coro.destroy(ptr %22)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 20, ptr %8, align 4
  %9 = extractvalue { ptr } %1, 0
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 1
  store ptr %8, ptr %12, align 8
  %13 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$coro", ptr undef, i1 undef }, ptr %10, 1
  %14 = insertvalue { ptr, ptr, i1 } %13, i1 true, 2
  %15 = extractvalue { ptr, ptr, i1 } %14, 0
  %16 = extractvalue { ptr, ptr, i1 } %14, 1
  %17 = extractvalue { ptr, ptr, i1 } %14, 2
  br i1 %17, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %18 = call i64 @llvm.coro.size.i64()
  %19 = call ptr @malloc(i64 %18)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %20 = phi ptr [ null, %_llgo_0 ], [ %19, %_llgo_2 ]
  %21 = call ptr @llvm.coro.begin(token %4, ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %22 = call i1 @llvm.coro.end(ptr %21, i1 false, token none)
  ret ptr %21

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %23 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %23)
  %24 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %24, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %25 = call ptr @llvm.coro.free(token %4, ptr %21)
  call void @free(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %26 = call i64 %15(ptr %16)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %27 = call ptr %15(ptr %16)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %28 = phi i64 [ %26, %_llgo_7 ], [ %42, %_llgo_18 ]
  %29 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %28, ptr %29, align 4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %27)
  br i1 %30, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %31 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %32 = call i1 @llvm.coro.done(ptr %27)
  br i1 %32, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %31, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %33 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %34, ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %27)
  %35 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %35, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %36 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %37 = getelementptr inbounds { ptr, i64 }, ptr %36, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %37, ptr %21)
  %38 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %38, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %40 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  call void @llvm.coro.destroy(ptr %27)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr, ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  %8 = extractvalue { ptr, ptr } %1, 1
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 30, ptr %10, align 4
  %11 = extractvalue { ptr, ptr } %1, 0
  %12 = extractvalue { ptr, ptr } %1, 1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %14 = getelementptr inbounds { ptr, ptr, ptr }, ptr %13, i32 0, i32 0
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, ptr, ptr }, ptr %13, i32 0, i32 1
  store ptr %12, ptr %15, align 8
  %16 = getelementptr inbounds { ptr, ptr, ptr }, ptr %13, i32 0, i32 2
  store ptr %10, ptr %16, align 8
  %17 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$1$coro", ptr undef, i1 undef }, ptr %13, 1
  %18 = insertvalue { ptr, ptr, i1 } %17, i1 true, 2
  %19 = extractvalue { ptr, ptr, i1 } %18, 0
  %20 = extractvalue { ptr, ptr, i1 } %18, 1
  %21 = extractvalue { ptr, ptr, i1 } %18, 2
  br i1 %21, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_2 ]
  %25 = call ptr @llvm.coro.begin(token %4, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_14, %_llgo_13
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_17, %_llgo_14, %_llgo_13
  %27 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_4 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_19, %_llgo_5
  %29 = call ptr @llvm.coro.free(token %4, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %30 = call i64 %19(ptr %20)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %31 = call ptr %19(ptr %20)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %32 = phi i64 [ %30, %_llgo_7 ], [ %46, %_llgo_18 ]
  %33 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %32, ptr %33, align 4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_11
  %34 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %31)
  br i1 %34, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %35 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %36 = call i1 @llvm.coro.done(ptr %31)
  br i1 %36, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %35, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %37 = call ptr @llvm.coro.promise(ptr %31, i32 8, i1 false)
  %38 = getelementptr inbounds { ptr, i64 }, ptr %37, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %38, ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %31)
  %39 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %39, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %40 = call ptr @llvm.coro.promise(ptr %31, i32 8, i1 false)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %41, ptr %25)
  %42 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %42, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %44 = call ptr @llvm.coro.promise(ptr %31, i32 8, i1 false)
  %45 = getelementptr inbounds { ptr, i64 }, ptr %44, i32 0, i32 1
  %46 = load i64, ptr %45, align 4
  call void @llvm.coro.destroy(ptr %31)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr, ptr, ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  %8 = extractvalue { ptr, ptr, ptr } %1, 1
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %7, %9
  %11 = extractvalue { ptr, ptr, ptr } %1, 2
  %12 = load i64, ptr %11, align 4
  %13 = add i64 %10, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %14 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %14, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %4, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %20 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %4, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %23 = extractvalue { ptr, ptr, ptr } %1, 0
  %24 = load i64, ptr %23, align 4
  %25 = extractvalue { ptr, ptr, ptr } %1, 1
  %26 = load i64, ptr %25, align 4
  %27 = add i64 %24, %26
  %28 = extractvalue { ptr, ptr, ptr } %1, 2
  %29 = load i64, ptr %28, align 4
  %30 = add i64 %27, %29
  %31 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %30, ptr %31, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro", ptr null, i1 false }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1$coro"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro", ptr null, i1 false }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 19 })
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_10
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_15, %_llgo_14, %_llgo_11, %_llgo_10
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_16, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %13 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %4)
  br i1 %13, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %14 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %15 = call i1 @llvm.coro.done(ptr %4)
  br i1 %15, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %14, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %16 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr, i64 }, ptr %16, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %17, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %4)
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %20 = getelementptr inbounds { ptr, i64 }, ptr %19, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %20, ptr %8)
  %21 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %23 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %4 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 2
  br i1 %4, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call i64 %2(ptr %3)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call ptr %2(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %6)
  %7 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %8 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  call void @llvm.coro.destroy(ptr %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %10 = phi i64 [ %5, %_llgo_1 ], [ %9, %_llgo_2 ]
  ret i64 %10
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1$coro"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 10 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 2
  br i1 %17, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %18 = call i64 %15(ptr %16)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %19 = call ptr %15(ptr %16)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %20 = phi i64 [ %18, %_llgo_8 ], [ %34, %_llgo_19 ]
  %21 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %20, ptr %21, align 4
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %22, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %23 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %24 = call i1 @llvm.coro.done(ptr %19)
  br i1 %24, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %25 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %28 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %10)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %32 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @llvm.coro.destroy(ptr %19)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 456
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 17 })
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
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 456, ptr %13, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro", ptr null, i1 false }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 30 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_12, %_llgo_11, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_15, %_llgo_12, %_llgo_11, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_17, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1$coro"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro", ptr null, i1 false }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 25 })
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_9
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %13)
  br i1 %14, label %_llgo_15, label %_llgo_16

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_13, %_llgo_7
  %15 = phi i1 [ true, %_llgo_7 ], [ false, %_llgo_11 ], [ false, %_llgo_12 ]
  %16 = call i1 @llvm.coro.done(ptr %13)
  br i1 %16, label %_llgo_8, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr, i64 }, ptr %17, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %18, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %13)
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  %20 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr, i64 }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %8)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_9

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_8
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_16:                                         ; preds = %_llgo_8
  %24 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %25 = getelementptr inbounds { ptr, i64 }, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %4 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 2
  br i1 %4, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call i64 %2(ptr %3)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call ptr %2(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %6)
  %7 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %8 = getelementptr inbounds { ptr, i64 }, ptr %7, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  call void @llvm.coro.destroy(ptr %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %10 = phi i64 [ %5, %_llgo_1 ], [ %9, %_llgo_2 ]
  ret i64 %10
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1$coro"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 15 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_15, %_llgo_14, %_llgo_1
  %11 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %12 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %12)
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_4 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_20, %_llgo_5
  %14 = call ptr @llvm.coro.free(token %4, ptr %10)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 2
  br i1 %17, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %18 = call i64 %15(ptr %16)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %19 = call ptr %15(ptr %16)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %20 = phi i64 [ %18, %_llgo_8 ], [ %34, %_llgo_19 ]
  %21 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %20, ptr %21, align 4
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_12
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %19)
  br i1 %22, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %23 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %24 = call i1 @llvm.coro.done(ptr %19)
  br i1 %24, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %23, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %25 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %26, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %19)
  %27 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %27, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %28 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %29 = getelementptr inbounds { ptr, i64 }, ptr %28, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %29, ptr %10)
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %32 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr, i64 }, ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @llvm.coro.destroy(ptr %19)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 789
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 22 })
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
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 789, ptr %13, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1$coro", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 true, 2
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", align 8
  store { ptr, ptr, i1 } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr %5, align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %6, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro", ptr null, i1 false }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %7 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %7, 0
  %9 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %7, 1
  %10 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %7, 2
  br i1 %10, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %11 = call i64 %8(ptr %9)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call ptr %8(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %12)
  %13 = call ptr @llvm.coro.promise(ptr %12, i32 8, i1 false)
  %14 = getelementptr inbounds { ptr, i64 }, ptr %13, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  call void @llvm.coro.destroy(ptr %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %16 = phi i64 [ %11, %_llgo_1 ], [ %15, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %18 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %17, 0
  %19 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %17, 1
  %20 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %17, 2
  br i1 %20, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %21 = call i64 %18(ptr %19, i64 7)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %22 = call ptr %18(ptr %19, i64 7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  %23 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  call void @llvm.coro.destroy(ptr %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %26 = phi i64 [ %21, %_llgo_4 ], [ %25, %_llgo_5 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 false, label %_llgo_8, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %27 = call i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr null)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_6
  %28 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %28)
  %29 = call ptr @llvm.coro.promise(ptr %28, i32 8, i1 false)
  %30 = getelementptr inbounds { ptr, i64 }, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  call void @llvm.coro.destroy(ptr %28)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %32 = phi i64 [ %27, %_llgo_7 ], [ %31, %_llgo_8 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = add i64 %16, %26
  %34 = add i64 %33, %32
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1$coro", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 true, 2
  %9 = alloca %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", align 8
  store { ptr, ptr, i1 } %8, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr %9, align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %10, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro", ptr null, i1 false }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %11 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %11, 0
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %11, 1
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %11, 2
  br i1 %14, label %_llgo_8, label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_2 ]
  %18 = call ptr @llvm.coro.begin(token %2, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_38, %_llgo_37, %_llgo_26, %_llgo_25, %_llgo_14, %_llgo_13
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_5:                                          ; preds = %_llgo_33, %_llgo_41, %_llgo_38, %_llgo_37, %_llgo_29, %_llgo_26, %_llgo_25, %_llgo_17, %_llgo_14, %_llgo_13
  %20 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_4 [
    i8 0, label %_llgo_43
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_43, %_llgo_5
  %22 = call ptr @llvm.coro.free(token %2, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %23 = call i64 %12(ptr %13)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %24 = call ptr %12(ptr %13)
  br label %_llgo_11

_llgo_9:                                          ; preds = %_llgo_18, %_llgo_7
  %25 = phi i64 [ %23, %_llgo_7 ], [ %42, %_llgo_18 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %27 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %26, 0
  %28 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %26, 1
  %29 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %26, 2
  br i1 %29, label %_llgo_20, label %_llgo_19

_llgo_10:                                         ; preds = %_llgo_11
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %30, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_8
  %31 = phi i1 [ true, %_llgo_8 ], [ false, %_llgo_13 ], [ false, %_llgo_14 ]
  %32 = call i1 @llvm.coro.done(ptr %24)
  br i1 %32, label %_llgo_10, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  br i1 %31, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %33 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %34 = getelementptr inbounds { ptr, i64 }, ptr %33, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %34, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %35 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %35, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_5
  ]

_llgo_14:                                         ; preds = %_llgo_12
  %36 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %37 = getelementptr inbounds { ptr, i64 }, ptr %36, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %37, ptr %18)
  %38 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %38, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_11

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_11

_llgo_17:                                         ; preds = %_llgo_10
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  br label %_llgo_5

_llgo_18:                                         ; preds = %_llgo_10
  %40 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  call void @llvm.coro.destroy(ptr %24)
  br label %_llgo_9

_llgo_19:                                         ; preds = %_llgo_9
  %43 = call i64 %27(ptr %28, i64 7)
  br label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_9
  %44 = call ptr %27(ptr %28, i64 7)
  br label %_llgo_23

_llgo_21:                                         ; preds = %_llgo_30, %_llgo_19
  %45 = phi i64 [ %43, %_llgo_19 ], [ %58, %_llgo_30 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 false, label %_llgo_32, label %_llgo_31

_llgo_22:                                         ; preds = %_llgo_23
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %44)
  br i1 %46, label %_llgo_29, label %_llgo_30

_llgo_23:                                         ; preds = %_llgo_28, %_llgo_27, %_llgo_20
  %47 = phi i1 [ true, %_llgo_20 ], [ false, %_llgo_25 ], [ false, %_llgo_26 ]
  %48 = call i1 @llvm.coro.done(ptr %44)
  br i1 %48, label %_llgo_22, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  br i1 %47, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %49 = call ptr @llvm.coro.promise(ptr %44, i32 8, i1 false)
  %50 = getelementptr inbounds { ptr, i64 }, ptr %49, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %50, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %44)
  %51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %51, label %_llgo_4 [
    i8 0, label %_llgo_27
    i8 1, label %_llgo_5
  ]

_llgo_26:                                         ; preds = %_llgo_24
  %52 = call ptr @llvm.coro.promise(ptr %44, i32 8, i1 false)
  %53 = getelementptr inbounds { ptr, i64 }, ptr %52, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %53, ptr %18)
  %54 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %54, label %_llgo_4 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25
  br label %_llgo_23

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_23

_llgo_29:                                         ; preds = %_llgo_22
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  br label %_llgo_5

_llgo_30:                                         ; preds = %_llgo_22
  %56 = call ptr @llvm.coro.promise(ptr %44, i32 8, i1 false)
  %57 = getelementptr inbounds { ptr, i64 }, ptr %56, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  call void @llvm.coro.destroy(ptr %44)
  br label %_llgo_21

_llgo_31:                                         ; preds = %_llgo_21
  %59 = call i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr null)
  br label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_21
  %60 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr null)
  br label %_llgo_35

_llgo_33:                                         ; preds = %_llgo_42, %_llgo_31
  %61 = phi i64 [ %59, %_llgo_31 ], [ %76, %_llgo_42 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %62 = add i64 %25, %45
  %63 = add i64 %62, %61
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_34:                                         ; preds = %_llgo_35
  %64 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %60)
  br i1 %64, label %_llgo_41, label %_llgo_42

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_39, %_llgo_32
  %65 = phi i1 [ true, %_llgo_32 ], [ false, %_llgo_37 ], [ false, %_llgo_38 ]
  %66 = call i1 @llvm.coro.done(ptr %60)
  br i1 %66, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  br i1 %65, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %67 = call ptr @llvm.coro.promise(ptr %60, i32 8, i1 false)
  %68 = getelementptr inbounds { ptr, i64 }, ptr %67, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %68, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %60)
  %69 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %69, label %_llgo_4 [
    i8 0, label %_llgo_39
    i8 1, label %_llgo_5
  ]

_llgo_38:                                         ; preds = %_llgo_36
  %70 = call ptr @llvm.coro.promise(ptr %60, i32 8, i1 false)
  %71 = getelementptr inbounds { ptr, i64 }, ptr %70, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %71, ptr %18)
  %72 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %72, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  br label %_llgo_35

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_34
  %73 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %73)
  br label %_llgo_5

_llgo_42:                                         ; preds = %_llgo_34
  %74 = call ptr @llvm.coro.promise(ptr %60, i32 8, i1 false)
  %75 = getelementptr inbounds { ptr, i64 }, ptr %74, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  call void @llvm.coro.destroy(ptr %60)
  br label %_llgo_33

_llgo_43:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i64 }, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %12)
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = mul i64 100, %18
  %20 = getelementptr inbounds { ptr, i64 }, ptr %2, i32 0, i32 1
  store i64 %19, ptr %20, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = mul i64 %0, %0
  ret i64 %1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_1
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_1
  %11 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %3, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %14 = mul i64 %0, %0
  %15 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1
  store i64 %14, ptr %15, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 999
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 20 })
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
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 999, ptr %13, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 2
  br i1 %3, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call i64 %1(ptr %2)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = getelementptr inbounds { ptr, i64 }, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi i64 [ %4, %_llgo_1 ], [ %8, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %11 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %10, 0
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %10, 1
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %10, 2
  br i1 %13, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3
  %14 = call i64 %11(ptr %12, i64 5)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_3
  %15 = call ptr %11(ptr %12, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %15)
  %16 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %17 = getelementptr inbounds { ptr, i64 }, ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %15)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = phi i64 [ %14, %_llgo_4 ], [ %18, %_llgo_5 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 false, label %_llgo_8, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %20 = call i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr null)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_6
  %21 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %21)
  %22 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %23 = getelementptr inbounds { ptr, i64 }, ptr %22, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %25 = phi i64 [ %20, %_llgo_7 ], [ %24, %_llgo_8 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 50 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = add i64 %9, %19
  %27 = add i64 %26, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 30 })
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

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_39, %_llgo_38, %_llgo_27, %_llgo_26, %_llgo_15, %_llgo_14, %_llgo_1
  %9 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_34, %_llgo_42, %_llgo_39, %_llgo_38, %_llgo_30, %_llgo_27, %_llgo_26, %_llgo_18, %_llgo_15, %_llgo_14, %_llgo_1
  %10 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %10)
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_44
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_44, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_1
  %13 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %13, 0
  %15 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %13, 1
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %13, 2
  br i1 %16, label %_llgo_9, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %17 = call i64 %14(ptr %15)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_7
  %18 = call ptr %14(ptr %15)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_19, %_llgo_8
  %19 = phi i64 [ %17, %_llgo_8 ], [ %36, %_llgo_19 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %20, 0
  %22 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %20, 1
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %20, 2
  br i1 %23, label %_llgo_21, label %_llgo_20

_llgo_11:                                         ; preds = %_llgo_12
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %18)
  br i1 %24, label %_llgo_18, label %_llgo_19

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_16, %_llgo_9
  %25 = phi i1 [ true, %_llgo_9 ], [ false, %_llgo_14 ], [ false, %_llgo_15 ]
  %26 = call i1 @llvm.coro.done(ptr %18)
  br i1 %26, label %_llgo_11, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  br i1 %25, label %_llgo_14, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_13
  %27 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %28 = getelementptr inbounds { ptr, i64 }, ptr %27, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %28, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %18)
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_4 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_15:                                         ; preds = %_llgo_13
  %30 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %31, ptr %8)
  %32 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %32, label %_llgo_4 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_5
  ]

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_15
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_11
  %33 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  br label %_llgo_5

_llgo_19:                                         ; preds = %_llgo_11
  %34 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %35 = getelementptr inbounds { ptr, i64 }, ptr %34, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  call void @llvm.coro.destroy(ptr %18)
  br label %_llgo_10

_llgo_20:                                         ; preds = %_llgo_10
  %37 = call i64 %21(ptr %22, i64 5)
  br label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_10
  %38 = call ptr %21(ptr %22, i64 5)
  br label %_llgo_24

_llgo_22:                                         ; preds = %_llgo_31, %_llgo_20
  %39 = phi i64 [ %37, %_llgo_20 ], [ %52, %_llgo_31 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 false, label %_llgo_33, label %_llgo_32

_llgo_23:                                         ; preds = %_llgo_24
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %38)
  br i1 %40, label %_llgo_30, label %_llgo_31

_llgo_24:                                         ; preds = %_llgo_29, %_llgo_28, %_llgo_21
  %41 = phi i1 [ true, %_llgo_21 ], [ false, %_llgo_26 ], [ false, %_llgo_27 ]
  %42 = call i1 @llvm.coro.done(ptr %38)
  br i1 %42, label %_llgo_23, label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24
  br i1 %41, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %43 = call ptr @llvm.coro.promise(ptr %38, i32 8, i1 false)
  %44 = getelementptr inbounds { ptr, i64 }, ptr %43, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %44, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %38)
  %45 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %45, label %_llgo_4 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25
  %46 = call ptr @llvm.coro.promise(ptr %38, i32 8, i1 false)
  %47 = getelementptr inbounds { ptr, i64 }, ptr %46, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %47, ptr %8)
  %48 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %48, label %_llgo_4 [
    i8 0, label %_llgo_29
    i8 1, label %_llgo_5
  ]

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_24

_llgo_29:                                         ; preds = %_llgo_27
  br label %_llgo_24

_llgo_30:                                         ; preds = %_llgo_23
  %49 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_23
  %50 = call ptr @llvm.coro.promise(ptr %38, i32 8, i1 false)
  %51 = getelementptr inbounds { ptr, i64 }, ptr %50, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  call void @llvm.coro.destroy(ptr %38)
  br label %_llgo_22

_llgo_32:                                         ; preds = %_llgo_22
  %53 = call i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr null)
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_22
  %54 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr null)
  br label %_llgo_36

_llgo_34:                                         ; preds = %_llgo_43, %_llgo_32
  %55 = phi i64 [ %53, %_llgo_32 ], [ %70, %_llgo_43 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 50 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %56 = add i64 %19, %39
  %57 = add i64 %56, %55
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_35:                                         ; preds = %_llgo_36
  %58 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %54)
  br i1 %58, label %_llgo_42, label %_llgo_43

_llgo_36:                                         ; preds = %_llgo_41, %_llgo_40, %_llgo_33
  %59 = phi i1 [ true, %_llgo_33 ], [ false, %_llgo_38 ], [ false, %_llgo_39 ]
  %60 = call i1 @llvm.coro.done(ptr %54)
  br i1 %60, label %_llgo_35, label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36
  br i1 %59, label %_llgo_38, label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_37
  %61 = call ptr @llvm.coro.promise(ptr %54, i32 8, i1 false)
  %62 = getelementptr inbounds { ptr, i64 }, ptr %61, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %62, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %54)
  %63 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %63, label %_llgo_4 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37
  %64 = call ptr @llvm.coro.promise(ptr %54, i32 8, i1 false)
  %65 = getelementptr inbounds { ptr, i64 }, ptr %64, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %65, ptr %8)
  %66 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %66, label %_llgo_4 [
    i8 0, label %_llgo_41
    i8 1, label %_llgo_5
  ]

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_36

_llgo_41:                                         ; preds = %_llgo_39
  br label %_llgo_36

_llgo_42:                                         ; preds = %_llgo_35
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %67)
  br label %_llgo_5

_llgo_43:                                         ; preds = %_llgo_35
  %68 = call ptr @llvm.coro.promise(ptr %54, i32 8, i1 false)
  %69 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 1
  %70 = load i64, ptr %69, align 4
  call void @llvm.coro.destroy(ptr %54)
  br label %_llgo_34

_llgo_44:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 777
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 25 })
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
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
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
  %13 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 777, ptr %13, align 4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro"()
  ret i64 %1
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro"()
  ret i64 %1
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro"()
  ret i64 %1
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro"()
  ret i64 %1
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro"(ptr %0, i64 %1) {
_llgo_0:
  %2 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro"(i64 %1)
  ret i64 %2
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"()
  ret i64 %1
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr %0) {
_llgo_0:
  %1 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"()
  ret i64 %1
}

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
