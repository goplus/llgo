; ModuleID = 'github.com/goplus/llgo/cl/_testrt/coroglobal'
source_filename = "github.com/goplus/llgo/cl/_testrt/coroglobal"

%"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/coroglobal.counter" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync" = global { ptr, ptr } zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker" = global { ptr, ptr } zeroinitializer, align 8
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
  %0 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.asyncCallGlobal$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 22 })
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 57 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  %13 = call ptr %11(ptr %12)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %14 = call i1 @llvm.coro.done(ptr %13)
  br i1 %14, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %13)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %15 = call i1 @llvm.coro.done(ptr %13)
  br i1 %15, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 })
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

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 55 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync$coro"() #0 {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 55 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = call ptr %4(ptr %5)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %1, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %12 = call ptr @llvm.coro.free(token %1, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %14 = call i1 @llvm.coro.done(ptr %6)
  br i1 %14, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %6)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %15 = call i1 @llvm.coro.done(ptr %6)
  br i1 %15, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %18, ptr %0, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %10

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker$coro"() #0 {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = call ptr %4(ptr %5)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %1, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %12 = call ptr @llvm.coro.free(token %1, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %14 = call i1 @llvm.coro.done(ptr %6)
  br i1 %14, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %6)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %15 = call i1 @llvm.coro.done(ptr %6)
  br i1 %15, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %17 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %18, ptr %0, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %10

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1$coro", ptr %0, align 8
  %1 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr %3()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = load i64, ptr %6, align 4
  call void @llvm.coro.destroy(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 18 })
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1$coro", ptr %10, align 8
  %11 = getelementptr { ptr, ptr }, ptr %10, i32 0, i32 0
  %12 = getelementptr { ptr, ptr }, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = call ptr %13()
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %16 = call i1 @llvm.coro.done(ptr %15)
  br i1 %16, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call i1 @llvm.coro.done(ptr %15)
  br i1 %17, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
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

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$1$coro"() #0 {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 33 })
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

_llgo_4:                                          ; preds = %_llgo_13
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_16, %_llgo_4, %_llgo_12, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_17
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  %11 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  %14 = call ptr %12(ptr %13)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %15 = call i1 @llvm.coro.done(ptr %14)
  br i1 %15, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %14)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %16 = call i1 @llvm.coro.done(ptr %14)
  br i1 %16, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %18 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %19 = load i64, ptr %18, align 4
  call void @llvm.coro.destroy(ptr %14)
  store i64 %19, ptr %0, align 4
  br label %_llgo_4

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %7

_llgo_16:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_17:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam"({ ptr, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue { ptr, ptr } %0, 0
  %3 = extractvalue { ptr, ptr } %0, 1
  %4 = call ptr %2(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %4)
  %5 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %6 = load i64, ptr %5, align 4
  call void @llvm.coro.destroy(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam$coro"({ ptr, ptr } %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 15 })
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
  %13 = extractvalue { ptr, ptr } %0, 0
  %14 = extractvalue { ptr, ptr } %0, 1
  %15 = call ptr %13(ptr %14)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %16 = call i1 @llvm.coro.done(ptr %15)
  br i1 %16, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call i1 @llvm.coro.done(ptr %15)
  br i1 %17, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %20, ptr %2, align 4
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

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn"(i64 %0) {
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
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1$coro", ptr undef }, ptr %3, 1
  ret { ptr, ptr } %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$coro"(i64 %0) #0 {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %4, align 4
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 42 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %4, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1$coro", ptr undef }, ptr %6, 1
  store { ptr, ptr } %8, ptr %1, align 8
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

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load i64, ptr %15, align 4
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = mul i64 %16, %18
  store i64 %19, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro", ptr null }, ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2$coro", ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = call ptr %4(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %6)
  %7 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$1$coro", ptr null }, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2$coro", ptr undef }, ptr %3, 1
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  %8 = call ptr %6(ptr %7)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %0, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %13 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %13, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %14 = call ptr @llvm.coro.free(token %0, ptr %12)
  call void @free(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %15 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %16 = call i1 @llvm.coro.done(ptr %8)
  br i1 %16, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %8)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call i1 @llvm.coro.done(ptr %8)
  br i1 %17, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %19 = call ptr @llvm.coro.promise(ptr %8, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 35 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %12

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 16 })
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

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  store i64 42, ptr %0, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$2$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 37 })
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
  %13 = extractvalue { ptr } %1, 0
  %14 = load { ptr, ptr }, ptr %13, align 8
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  %17 = call ptr %15(ptr %16)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

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
  call void @llvm.coro.destroy(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = add i64 %22, 8
  store i64 %23, ptr %2, align 4
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
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1$coro", ptr undef }, ptr %3, 1
  store { ptr, ptr } %5, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %3, align 4
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 58 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %3, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1$coro", ptr undef }, ptr %5, 1
  store { ptr, ptr } %7, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
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

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %6 = add i64 %5, 1
  store i64 %6, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %7 = extractvalue { ptr } %1, 0
  %8 = load i64, ptr %7, align 4
  %9 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %10 = mul i64 %9, 100
  %11 = add i64 %8, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %11, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %3, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %17 = call ptr @llvm.coro.free(token %3, ptr %15)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %18 = call i1 @llvm.coro.end(ptr %15, i1 false, token none)
  ret ptr %15

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
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
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1$coro", ptr undef }, ptr %3, 1
  store { ptr, ptr } %5, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$coro"(i64 %0) #0 {
_llgo_0:
  %1 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %3, align 4
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 61 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %3, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1$coro", ptr undef }, ptr %5, 1
  store { ptr, ptr } %7, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
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

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %16 = add i64 %15, 1
  store i64 %16, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %17 = extractvalue { ptr } %1, 0
  %18 = load i64, ptr %17, align 4
  %19 = mul i64 10, %18
  %20 = load i64, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.counter", align 4
  %21 = mul i64 %19, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store i64 %21, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %0, i64 16, i64 3, i64 0, i64 3, i64 3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ 0, %_llgo_0 ], [ %14, %_llgo_2 ]
  %3 = icmp slt i64 %2, 3
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %2, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1$coro", ptr undef }, ptr %5, 1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %10 = icmp slt i64 %2, 0
  %11 = icmp sge i64 %2, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds { ptr, ptr }, ptr %8, i64 %2
  store { ptr, ptr } %7, ptr %13, align 8
  %14 = add i64 %2, 1
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %15 = phi i64 [ 0, %_llgo_3 ], [ %30, %_llgo_5 ]
  %16 = phi i64 [ 0, %_llgo_3 ], [ %31, %_llgo_5 ]
  %17 = icmp slt i64 %16, 3
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %20 = icmp slt i64 %16, 0
  %21 = icmp sge i64 %16, %19
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds { ptr, ptr }, ptr %18, i64 %16
  %24 = load { ptr, ptr }, ptr %23, align 8
  %25 = extractvalue { ptr, ptr } %24, 0
  %26 = extractvalue { ptr, ptr } %24, 1
  %27 = call ptr %25(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %27)
  %28 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %29 = load i64, ptr %28, align 4
  call void @llvm.coro.destroy(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %30 = add i64 %15, %29
  %31 = add i64 %16, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_8, label %_llgo_9

_llgo_1:                                          ; preds = %_llgo_9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %2, label %_llgo_14 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_11
  ]

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_13
  %3 = phi i64 [ 0, %_llgo_13 ], [ %15, %_llgo_3 ]
  %4 = icmp slt i64 %3, 3
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %3, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1$coro", ptr undef }, ptr %6, 1
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  %11 = icmp slt i64 %3, 0
  %12 = icmp sge i64 %3, %10
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds { ptr, ptr }, ptr %9, i64 %3
  store { ptr, ptr } %8, ptr %14, align 8
  %15 = add i64 %3, 1
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_19, %_llgo_4
  %16 = phi i64 [ 0, %_llgo_4 ], [ %43, %_llgo_19 ]
  %17 = phi i64 [ 0, %_llgo_4 ], [ %44, %_llgo_19 ]
  %18 = icmp slt i64 %17, 3
  br i1 %18, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  %21 = icmp slt i64 %17, 0
  %22 = icmp sge i64 %17, %20
  %23 = or i1 %22, %21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %23)
  %24 = getelementptr inbounds { ptr, ptr }, ptr %19, i64 %17
  %25 = load { ptr, ptr }, ptr %24, align 8
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  %28 = call ptr %26(ptr %27)
  br label %_llgo_15

_llgo_7:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_0
  %29 = call i64 @llvm.coro.size.i64()
  %30 = call ptr @malloc(i64 %29)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %31 = phi ptr [ null, %_llgo_0 ], [ %30, %_llgo_8 ]
  %32 = call ptr @llvm.coro.begin(token %0, ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_7
  %33 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %33, label %_llgo_23 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_11
  ]

_llgo_11:                                         ; preds = %_llgo_22, %_llgo_10, %_llgo_18, %_llgo_1
  %34 = call ptr @llvm.coro.free(token %0, ptr %32)
  call void @free(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_23
  %35 = call i1 @llvm.coro.end(ptr %32, i1 false, token none)
  ret ptr %32

_llgo_13:                                         ; preds = %_llgo_1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %36, i64 16, i64 3, i64 0, i64 3, i64 3)
  br label %_llgo_2

_llgo_14:                                         ; preds = %_llgo_1
  ret ptr %32

_llgo_15:                                         ; preds = %_llgo_20, %_llgo_6
  %38 = call i1 @llvm.coro.done(ptr %28)
  br i1 %38, label %_llgo_19, label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  call void @llvm.coro.resume(ptr %28)
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %39 = call i1 @llvm.coro.done(ptr %28)
  br i1 %39, label %_llgo_19, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_21 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_11
  ]

_llgo_19:                                         ; preds = %_llgo_17, %_llgo_15
  %41 = call ptr @llvm.coro.promise(ptr %28, i32 8, i1 false)
  %42 = load i64, ptr %41, align 4
  call void @llvm.coro.destroy(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %43 = add i64 %16, %42
  %44 = add i64 %17, 1
  br label %_llgo_5

_llgo_20:                                         ; preds = %_llgo_18
  br label %_llgo_15

_llgo_21:                                         ; preds = %_llgo_18
  ret ptr %32

_llgo_22:                                         ; preds = %_llgo_10
  br label %_llgo_11

_llgo_23:                                         ; preds = %_llgo_10
  br label %_llgo_12
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load i64, ptr %15, align 4
  %17 = mul i64 %16, 10
  store i64 %17, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %6 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn"(i64 7)
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  %9 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro", ptr null }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %14)
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
  %15 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.main$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreWorker"(i64 2)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.createAndStoreSyncWorker"(i64 1000)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalWorker"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 20 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 51 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.callGlobalSync"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 51 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 53 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.asyncCallGlobal$coro"()
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %0, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_81
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_85 [
    i8 0, label %_llgo_84
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_84, %_llgo_4, %_llgo_80, %_llgo_73, %_llgo_66, %_llgo_59, %_llgo_52, %_llgo_45, %_llgo_38, %_llgo_31, %_llgo_24, %_llgo_17, %_llgo_10
  %10 = call ptr @llvm.coro.free(token %0, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_85
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.chainedCall$coro"()
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %8

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %16 = call i1 @llvm.coro.done(ptr %15)
  br i1 %16, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %17 = call i1 @llvm.coro.done(ptr %15)
  br i1 %17, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall$coro"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSpawn"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$coro"()
  br label %_llgo_21

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %8

_llgo_21:                                         ; preds = %_llgo_26, %_llgo_18
  %21 = call i1 @llvm.coro.done(ptr %20)
  br i1 %21, label %_llgo_25, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  call void @llvm.coro.resume(ptr %20)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %22 = call i1 @llvm.coro.done(ptr %20)
  br i1 %22, label %_llgo_25, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %23 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %23, label %_llgo_27 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_23, %_llgo_21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsReturn"(i64 7)
  %25 = extractvalue { ptr, ptr } %24, 0
  %26 = extractvalue { ptr, ptr } %24, 1
  %27 = call ptr %25(ptr %26)
  br label %_llgo_28

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %8

_llgo_28:                                         ; preds = %_llgo_33, %_llgo_25
  %28 = call i1 @llvm.coro.done(ptr %27)
  br i1 %28, label %_llgo_32, label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28
  call void @llvm.coro.resume(ptr %27)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29
  %29 = call i1 @llvm.coro.done(ptr %27)
  br i1 %29, label %_llgo_32, label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_34 [
    i8 0, label %_llgo_33
    i8 1, label %_llgo_5
  ]

_llgo_32:                                         ; preds = %_llgo_30, %_llgo_28
  %31 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 38 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureAsParam$coro"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.main$1$coro", ptr null }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 10 })
  br label %_llgo_35

_llgo_33:                                         ; preds = %_llgo_31
  br label %_llgo_28

_llgo_34:                                         ; preds = %_llgo_31
  ret ptr %8

_llgo_35:                                         ; preds = %_llgo_40, %_llgo_32
  %34 = call i1 @llvm.coro.done(ptr %33)
  br i1 %34, label %_llgo_39, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  call void @llvm.coro.resume(ptr %33)
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36
  %35 = call i1 @llvm.coro.done(ptr %33)
  br i1 %35, label %_llgo_39, label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_41 [
    i8 0, label %_llgo_40
    i8 1, label %_llgo_5
  ]

_llgo_39:                                         ; preds = %_llgo_37, %_llgo_35
  %37 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %38 = load i64, ptr %37, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 52 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$coro"()
  br label %_llgo_42

_llgo_40:                                         ; preds = %_llgo_38
  br label %_llgo_35

_llgo_41:                                         ; preds = %_llgo_38
  ret ptr %8

_llgo_42:                                         ; preds = %_llgo_47, %_llgo_39
  %40 = call i1 @llvm.coro.done(ptr %39)
  br i1 %40, label %_llgo_46, label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42
  call void @llvm.coro.resume(ptr %39)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43
  %41 = call i1 @llvm.coro.done(ptr %39)
  br i1 %41, label %_llgo_46, label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44
  %42 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %42, label %_llgo_48 [
    i8 0, label %_llgo_47
    i8 1, label %_llgo_5
  ]

_llgo_46:                                         ; preds = %_llgo_44, %_llgo_42
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 34 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %43 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.loopClosures$coro"()
  br label %_llgo_49

_llgo_47:                                         ; preds = %_llgo_45
  br label %_llgo_42

_llgo_48:                                         ; preds = %_llgo_45
  ret ptr %8

_llgo_49:                                         ; preds = %_llgo_54, %_llgo_46
  %44 = call i1 @llvm.coro.done(ptr %43)
  br i1 %44, label %_llgo_53, label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49
  call void @llvm.coro.resume(ptr %43)
  br label %_llgo_51

_llgo_51:                                         ; preds = %_llgo_50
  %45 = call i1 @llvm.coro.done(ptr %43)
  br i1 %45, label %_llgo_53, label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51
  %46 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %46, label %_llgo_55 [
    i8 0, label %_llgo_54
    i8 1, label %_llgo_5
  ]

_llgo_53:                                         ; preds = %_llgo_51, %_llgo_49
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %47 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.closureCallsClosure$coro"()
  br label %_llgo_56

_llgo_54:                                         ; preds = %_llgo_52
  br label %_llgo_49

_llgo_55:                                         ; preds = %_llgo_52
  ret ptr %8

_llgo_56:                                         ; preds = %_llgo_61, %_llgo_53
  %48 = call i1 @llvm.coro.done(ptr %47)
  br i1 %48, label %_llgo_60, label %_llgo_57

_llgo_57:                                         ; preds = %_llgo_56
  call void @llvm.coro.resume(ptr %47)
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57
  %49 = call i1 @llvm.coro.done(ptr %47)
  br i1 %49, label %_llgo_60, label %_llgo_59

_llgo_59:                                         ; preds = %_llgo_58
  %50 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %50, label %_llgo_62 [
    i8 0, label %_llgo_61
    i8 1, label %_llgo_5
  ]

_llgo_60:                                         ; preds = %_llgo_58, %_llgo_56
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 53 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %51 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$coro"()
  br label %_llgo_63

_llgo_61:                                         ; preds = %_llgo_59
  br label %_llgo_56

_llgo_62:                                         ; preds = %_llgo_59
  ret ptr %8

_llgo_63:                                         ; preds = %_llgo_68, %_llgo_60
  %52 = call i1 @llvm.coro.done(ptr %51)
  br i1 %52, label %_llgo_67, label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63
  call void @llvm.coro.resume(ptr %51)
  br label %_llgo_65

_llgo_65:                                         ; preds = %_llgo_64
  %53 = call i1 @llvm.coro.done(ptr %51)
  br i1 %53, label %_llgo_67, label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65
  %54 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %54, label %_llgo_69 [
    i8 0, label %_llgo_68
    i8 1, label %_llgo_5
  ]

_llgo_67:                                         ; preds = %_llgo_65, %_llgo_63
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %55 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$coro"()
  br label %_llgo_70

_llgo_68:                                         ; preds = %_llgo_66
  br label %_llgo_63

_llgo_69:                                         ; preds = %_llgo_66
  ret ptr %8

_llgo_70:                                         ; preds = %_llgo_75, %_llgo_67
  %56 = call i1 @llvm.coro.done(ptr %55)
  br i1 %56, label %_llgo_74, label %_llgo_71

_llgo_71:                                         ; preds = %_llgo_70
  call void @llvm.coro.resume(ptr %55)
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71
  %57 = call i1 @llvm.coro.done(ptr %55)
  br i1 %57, label %_llgo_74, label %_llgo_73

_llgo_73:                                         ; preds = %_llgo_72
  %58 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %58, label %_llgo_76 [
    i8 0, label %_llgo_75
    i8 1, label %_llgo_5
  ]

_llgo_74:                                         ; preds = %_llgo_72, %_llgo_70
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 54 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %59 = call ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$coro"()
  br label %_llgo_77

_llgo_75:                                         ; preds = %_llgo_73
  br label %_llgo_70

_llgo_76:                                         ; preds = %_llgo_73
  ret ptr %8

_llgo_77:                                         ; preds = %_llgo_82, %_llgo_74
  %60 = call i1 @llvm.coro.done(ptr %59)
  br i1 %60, label %_llgo_81, label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77
  call void @llvm.coro.resume(ptr %59)
  br label %_llgo_79

_llgo_79:                                         ; preds = %_llgo_78
  %61 = call i1 @llvm.coro.done(ptr %59)
  br i1 %61, label %_llgo_81, label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79
  %62 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %62, label %_llgo_83 [
    i8 0, label %_llgo_82
    i8 1, label %_llgo_5
  ]

_llgo_81:                                         ; preds = %_llgo_79, %_llgo_77
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_82:                                         ; preds = %_llgo_80
  br label %_llgo_77

_llgo_83:                                         ; preds = %_llgo_80
  ret ptr %8

_llgo_84:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_85:                                         ; preds = %_llgo_4
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
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 16 })
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

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  store i64 123, ptr %0, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  %9 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = add i64 %5, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.mixedCall$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 16 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 31 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalSync", align 8
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = call ptr %3(ptr %4)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %0, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_18
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_22 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_21, %_llgo_4, %_llgo_17, %_llgo_10
  %11 = call ptr @llvm.coro.free(token %0, ptr %9)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_22
  %12 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %13 = call i1 @llvm.coro.done(ptr %5)
  br i1 %13, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %5)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %14 = call i1 @llvm.coro.done(ptr %5)
  br i1 %14, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %15 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %15, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %16 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %17 = load i64, ptr %16, align 4
  call void @llvm.coro.destroy(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = load { ptr, ptr }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.globalWorker", align 8
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  %21 = call ptr %19(ptr %20)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %9

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %22 = call i1 @llvm.coro.done(ptr %21)
  br i1 %22, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %21)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %23 = call i1 @llvm.coro.done(ptr %21)
  br i1 %23, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  %25 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %26 = load i64, ptr %25, align 4
  call void @llvm.coro.destroy(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = add i64 %17, %26
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %9

_llgo_21:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_22:                                         ; preds = %_llgo_4
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
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1$coro", ptr undef }, ptr %1, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %5 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  store ptr %0, ptr %5, align 8
  %6 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2$coro", ptr undef }, ptr %4, 1
  %7 = extractvalue { ptr, ptr } %3, 0
  %8 = extractvalue { ptr, ptr } %3, 1
  %9 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = extractvalue { ptr, ptr } %6, 0
  %13 = extractvalue { ptr, ptr } %6, 1
  %14 = call ptr %12(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %14)
  %15 = call ptr @llvm.coro.promise(ptr %14, i32 8, i1 false)
  %16 = load i64, ptr %15, align 4
  call void @llvm.coro.destroy(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = extractvalue { ptr, ptr } %3, 0
  %18 = extractvalue { ptr, ptr } %3, 1
  %19 = call ptr %17(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %19)
  %20 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %21 = load i64, ptr %20, align 4
  call void @llvm.coro.destroy(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 23 })
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

_llgo_4:                                          ; preds = %_llgo_27
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_31 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_30, %_llgo_4, %_llgo_26, %_llgo_19, %_llgo_12, %_llgo_1
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_31
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr inbounds { ptr }, ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1$coro", ptr undef }, ptr %11, 1
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %10, ptr %15, align 8
  %16 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2$coro", ptr undef }, ptr %14, 1
  %17 = extractvalue { ptr, ptr } %13, 0
  %18 = extractvalue { ptr, ptr } %13, 1
  %19 = call ptr %17(ptr %18)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %20 = call i1 @llvm.coro.done(ptr %19)
  br i1 %20, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %19)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %21 = call i1 @llvm.coro.done(ptr %19)
  br i1 %21, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %23 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %24 = load i64, ptr %23, align 4
  call void @llvm.coro.destroy(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = extractvalue { ptr, ptr } %16, 0
  %26 = extractvalue { ptr, ptr } %16, 1
  %27 = call ptr %25(ptr %26)
  br label %_llgo_16

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %6

_llgo_16:                                         ; preds = %_llgo_21, %_llgo_13
  %28 = call i1 @llvm.coro.done(ptr %27)
  br i1 %28, label %_llgo_20, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  call void @llvm.coro.resume(ptr %27)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  %29 = call i1 @llvm.coro.done(ptr %27)
  br i1 %29, label %_llgo_20, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_22 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_16
  %31 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = extractvalue { ptr, ptr } %13, 0
  %34 = extractvalue { ptr, ptr } %13, 1
  %35 = call ptr %33(ptr %34)
  br label %_llgo_23

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_16

_llgo_22:                                         ; preds = %_llgo_19
  ret ptr %6

_llgo_23:                                         ; preds = %_llgo_28, %_llgo_20
  %36 = call i1 @llvm.coro.done(ptr %35)
  br i1 %36, label %_llgo_27, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  call void @llvm.coro.resume(ptr %35)
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24
  %37 = call i1 @llvm.coro.done(ptr %35)
  br i1 %37, label %_llgo_27, label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25
  %38 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %38, label %_llgo_29 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25, %_llgo_23
  %39 = call ptr @llvm.coro.promise(ptr %35, i32 8, i1 false)
  %40 = load i64, ptr %39, align 4
  call void @llvm.coro.destroy(ptr %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_23

_llgo_29:                                         ; preds = %_llgo_26
  ret ptr %6

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load i64, ptr %15, align 4
  %17 = add i64 %16, 10
  %18 = extractvalue { ptr } %1, 0
  store i64 %17, ptr %18, align 4
  %19 = extractvalue { ptr } %1, 0
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.multipleClosures$2$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load i64, ptr %15, align 4
  %17 = mul i64 %16, 2
  %18 = extractvalue { ptr } %1, 0
  store i64 %17, ptr %18, align 4
  %19 = extractvalue { ptr } %1, 0
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$coro", ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = call ptr %4(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %6)
  %7 = call ptr @llvm.coro.promise(ptr %6, i32 8, i1 false)
  %8 = load i64, ptr %7, align 4
  call void @llvm.coro.destroy(ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 21 })
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
  store i64 10, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr inbounds { ptr }, ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$coro", ptr undef }, ptr %11, 1
  %14 = extractvalue { ptr, ptr } %13, 0
  %15 = extractvalue { ptr, ptr } %13, 1
  %16 = call ptr %14(ptr %15)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %17 = call i1 @llvm.coro.done(ptr %16)
  br i1 %17, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %16)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %18 = call i1 @llvm.coro.done(ptr %16)
  br i1 %18, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %16, i32 8, i1 false)
  %21 = load i64, ptr %20, align 4
  call void @llvm.coro.destroy(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
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

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 20, ptr %7, align 4
  %8 = extractvalue { ptr } %1, 0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %7, ptr %11, align 8
  %12 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$coro", ptr undef }, ptr %9, 1
  %13 = extractvalue { ptr, ptr } %12, 0
  %14 = extractvalue { ptr, ptr } %12, 1
  %15 = call ptr %13(ptr %14)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %16 = call i64 @llvm.coro.size.i64()
  %17 = call ptr @malloc(i64 %16)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %18 = phi ptr [ null, %_llgo_0 ], [ %17, %_llgo_2 ]
  %19 = call ptr @llvm.coro.begin(token %3, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %20 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %20, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %21 = call ptr @llvm.coro.free(token %3, ptr %19)
  call void @free(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %22 = call i1 @llvm.coro.end(ptr %19, i1 false, token none)
  ret ptr %19

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %23 = call i1 @llvm.coro.done(ptr %15)
  br i1 %23, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %24 = call i1 @llvm.coro.done(ptr %15)
  br i1 %24, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %26 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %27 = load i64, ptr %26, align 4
  call void @llvm.coro.destroy(ptr %15)
  store i64 %27, ptr %2, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %19

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr, ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  %7 = extractvalue { ptr, ptr } %1, 1
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 30, ptr %9, align 4
  %10 = extractvalue { ptr, ptr } %1, 0
  %11 = extractvalue { ptr, ptr } %1, 1
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %13 = getelementptr inbounds { ptr, ptr, ptr }, ptr %12, i32 0, i32 0
  store ptr %10, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, ptr, ptr }, ptr %12, i32 0, i32 1
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, ptr, ptr }, ptr %12, i32 0, i32 2
  store ptr %9, ptr %15, align 8
  %16 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$1$coro", ptr undef }, ptr %12, 1
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  %19 = call ptr %17(ptr %18)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %20 = call i64 @llvm.coro.size.i64()
  %21 = call ptr @malloc(i64 %20)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %22 = phi ptr [ null, %_llgo_0 ], [ %21, %_llgo_2 ]
  %23 = call ptr @llvm.coro.begin(token %3, ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %24 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %24, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %25 = call ptr @llvm.coro.free(token %3, ptr %23)
  call void @free(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %26 = call i1 @llvm.coro.end(ptr %23, i1 false, token none)
  ret ptr %23

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %27 = call i1 @llvm.coro.done(ptr %19)
  br i1 %27, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %19)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %28 = call i1 @llvm.coro.done(ptr %19)
  br i1 %28, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %29 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %29, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %30 = call ptr @llvm.coro.promise(ptr %19, i32 8, i1 false)
  %31 = load i64, ptr %30, align 4
  call void @llvm.coro.destroy(ptr %19)
  store i64 %31, ptr %2, align 4
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %23

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.nestedClosures$1$1$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr, ptr, ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr, ptr, ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  %7 = extractvalue { ptr, ptr, ptr } %1, 1
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %6, %8
  %10 = extractvalue { ptr, ptr, ptr } %1, 2
  %11 = load i64, ptr %10, align 4
  %12 = add i64 %9, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %13, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call i64 @llvm.coro.size.i64()
  %15 = call ptr @malloc(i64 %14)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi ptr [ null, %_llgo_0 ], [ %15, %_llgo_2 ]
  %17 = call ptr @llvm.coro.begin(token %3, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_7
  %18 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %18, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %19 = call ptr @llvm.coro.free(token %3, ptr %17)
  call void @free(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %20 = call i1 @llvm.coro.end(ptr %17, i1 false, token none)
  ret ptr %17

_llgo_7:                                          ; preds = %_llgo_1
  %21 = extractvalue { ptr, ptr, ptr } %1, 0
  %22 = load i64, ptr %21, align 4
  %23 = extractvalue { ptr, ptr, ptr } %1, 1
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %22, %24
  %26 = extractvalue { ptr, ptr, ptr } %1, 2
  %27 = load i64, ptr %26, align 4
  %28 = add i64 %25, %27
  store i64 %28, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %17

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1$coro", ptr %0, align 8
  %1 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr %3(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro", ptr null }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = load i64, ptr %6, align 4
  call void @llvm.coro.destroy(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1$coro", ptr %2, align 8
  %3 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 0
  %4 = getelementptr { ptr, ptr }, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr %5(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro", ptr null }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 19 })
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = call i64 @llvm.coro.size.i64()
  %9 = call ptr @malloc(i64 %8)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %10 = phi ptr [ null, %_llgo_0 ], [ %9, %_llgo_2 ]
  %11 = call ptr @llvm.coro.begin(token %0, ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_11
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_14, %_llgo_4, %_llgo_10
  %13 = call ptr @llvm.coro.free(token %0, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_15
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_12, %_llgo_1
  %15 = call i1 @llvm.coro.done(ptr %7)
  br i1 %15, label %_llgo_11, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  call void @llvm.coro.resume(ptr %7)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %16 = call i1 @llvm.coro.done(ptr %7)
  br i1 %16, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_13 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9, %_llgo_7
  %18 = call ptr @llvm.coro.promise(ptr %7, i32 8, i1 false)
  %19 = load i64, ptr %18, align 4
  call void @llvm.coro.destroy(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 28 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %11

_llgo_14:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_4
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
  %4 = call ptr %2(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %4)
  %5 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %6 = load i64, ptr %5, align 4
  call void @llvm.coro.destroy(ptr %4)
  ret i64 %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$1$coro"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 10 })
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
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %15 = call ptr %13(ptr %14)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %16 = call i1 @llvm.coro.done(ptr %15)
  br i1 %16, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call i1 @llvm.coro.done(ptr %15)
  br i1 %17, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %15)
  store i64 %20, ptr %2, align 4
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

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 17 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 456
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParam$2$coro"() #0 {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 17 })
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

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  store i64 456, ptr %0, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1$coro", ptr %0, align 8
  %1 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 0
  %2 = getelementptr { ptr, ptr }, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr %3(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro", ptr null }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %5)
  %6 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %7 = load i64, ptr %6, align 4
  call void @llvm.coro.destroy(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 30 })
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
  %10 = alloca { ptr, ptr }, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1$coro", ptr %10, align 8
  %11 = getelementptr { ptr, ptr }, ptr %10, i32 0, i32 0
  %12 = getelementptr { ptr, ptr }, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = call ptr %13(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro", ptr null }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 25 })
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %16 = call i1 @llvm.coro.done(ptr %15)
  br i1 %16, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call i1 @llvm.coro.done(ptr %15)
  br i1 %17, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 33 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
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

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 15 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %4 = call ptr %2(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %4)
  %5 = call ptr @llvm.coro.promise(ptr %4, i32 8, i1 false)
  %6 = load i64, ptr %5, align 4
  call void @llvm.coro.destroy(ptr %4)
  ret i64 %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$1$coro"(%"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) #0 {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 15 })
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
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %15 = call ptr %13(ptr %14)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %9

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %16 = call i1 @llvm.coro.done(ptr %15)
  br i1 %16, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %15)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call i1 @llvm.coro.done(ptr %15)
  br i1 %17, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %18 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %18, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %19 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %15)
  store i64 %20, ptr %2, align 4
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

define i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 22 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i64 789
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncParamAsync$2$coro"() #0 {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 22 })
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

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  store i64 789, ptr %0, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1$coro", ptr undef }, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", align 8
  store { ptr, ptr } %3, ptr %4, align 8
  %5 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %5, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro", ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %6 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %6, 1
  %9 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %12, 0
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %12, 1
  %15 = call ptr %13(ptr %14, i64 7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %15)
  %16 = call ptr @llvm.coro.promise(ptr %15, i32 8, i1 false)
  %17 = load i64, ptr %16, align 4
  call void @llvm.coro.destroy(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %18)
  %19 = call ptr @llvm.coro.promise(ptr %18, i32 8, i1 false)
  %20 = load i64, ptr %19, align 4
  call void @llvm.coro.destroy(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = add i64 %11, %17
  %22 = add i64 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 25 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1$coro", ptr undef }, ptr %3, 1
  %6 = alloca %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", align 8
  store { ptr, ptr } %5, ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr %6, align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %7, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  store %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$2$coro", ptr null }, ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %8 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %9 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %8, 0
  %10 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %8, 1
  %11 = call ptr %9(ptr %10)
  br label %_llgo_7

_llgo_2:                                          ; preds = %_llgo_0
  %12 = call i64 @llvm.coro.size.i64()
  %13 = call ptr @malloc(i64 %12)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %14 = phi ptr [ null, %_llgo_0 ], [ %13, %_llgo_2 ]
  %15 = call ptr @llvm.coro.begin(token %0, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_25
  %16 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %16, label %_llgo_29 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_28, %_llgo_4, %_llgo_24, %_llgo_17, %_llgo_10
  %17 = call ptr @llvm.coro.free(token %0, ptr %15)
  call void @free(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_29
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
  call void @llvm.coro.destroy(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %25 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %24, 0
  %26 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %24, 1
  %27 = call ptr %25(ptr %26, i64 7)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_10
  ret ptr %15

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_11
  %28 = call i1 @llvm.coro.done(ptr %27)
  br i1 %28, label %_llgo_18, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  call void @llvm.coro.resume(ptr %27)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %29 = call i1 @llvm.coro.done(ptr %27)
  br i1 %29, label %_llgo_18, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_20 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_5
  ]

_llgo_18:                                         ; preds = %_llgo_16, %_llgo_14
  %31 = call ptr @llvm.coro.promise(ptr %27, i32 8, i1 false)
  %32 = load i64, ptr %31, align 4
  call void @llvm.coro.destroy(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 41 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$3$coro"(ptr null)
  br label %_llgo_21

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_17
  ret ptr %15

_llgo_21:                                         ; preds = %_llgo_26, %_llgo_18
  %34 = call i1 @llvm.coro.done(ptr %33)
  br i1 %34, label %_llgo_25, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  call void @llvm.coro.resume(ptr %33)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %35 = call i1 @llvm.coro.done(ptr %33)
  br i1 %35, label %_llgo_25, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  %36 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %36, label %_llgo_27 [
    i8 0, label %_llgo_26
    i8 1, label %_llgo_5
  ]

_llgo_25:                                         ; preds = %_llgo_23, %_llgo_21
  %37 = call ptr @llvm.coro.promise(ptr %33, i32 8, i1 false)
  %38 = load i64, ptr %37, align 4
  call void @llvm.coro.destroy(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 40 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = add i64 %23, %32
  %40 = add i64 %39, %38
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 27 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_26:                                         ; preds = %_llgo_24
  br label %_llgo_21

_llgo_27:                                         ; preds = %_llgo_24
  ret ptr %15

_llgo_28:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_29:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare i64 @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1"(ptr)

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypes$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca i64, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %7, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %13 = call ptr @llvm.coro.free(token %3, ptr %11)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %14 = call i1 @llvm.coro.end(ptr %11, i1 false, token none)
  ret ptr %11

_llgo_7:                                          ; preds = %_llgo_1
  %15 = extractvalue { ptr } %1, 0
  %16 = load i64, ptr %15, align 4
  %17 = mul i64 100, %16
  store i64 %17, ptr %2, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %11

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %1 = alloca i64, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %4, label %_llgo_8 [
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

_llgo_4:                                          ; preds = %_llgo_7
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_1
  %12 = mul i64 %0, %0
  store i64 %12, ptr %1, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %8

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
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
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 20 })
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

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  store i64 999, ptr %0, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 30 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %0 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 0
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %0, 1
  %3 = call ptr %1(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %3)
  %4 = call ptr @llvm.coro.promise(ptr %3, i32 8, i1 false)
  %5 = load i64, ptr %4, align 4
  call void @llvm.coro.destroy(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %6, 1
  %9 = call ptr %7(ptr %8, i64 5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i64, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %12)
  %13 = call ptr @llvm.coro.promise(ptr %12, i32 8, i1 false)
  %14 = load i64, ptr %13, align 4
  call void @llvm.coro.destroy(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 50 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = add i64 %5, %11
  %16 = add i64 %15, %14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$coro"() #0 {
_llgo_0:
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 30 })
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

_llgo_4:                                          ; preds = %_llgo_27
  %7 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %7, label %_llgo_31 [
    i8 0, label %_llgo_30
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_30, %_llgo_4, %_llgo_26, %_llgo_19, %_llgo_12, %_llgo_1
  %8 = call ptr @llvm.coro.free(token %0, ptr %6)
  call void @free(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_31
  %9 = call i1 @llvm.coro.end(ptr %6, i1 false, token none)
  ret ptr %6

_llgo_7:                                          ; preds = %_llgo_1
  %10 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedWorker", align 8
  %11 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %10, 0
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.WorkerFunc" %10, 1
  %13 = call ptr %11(ptr %12)
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %6

_llgo_9:                                          ; preds = %_llgo_14, %_llgo_7
  %14 = call i1 @llvm.coro.done(ptr %13)
  br i1 %14, label %_llgo_13, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  call void @llvm.coro.resume(ptr %13)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %15 = call i1 @llvm.coro.done(ptr %13)
  br i1 %15, label %_llgo_13, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %16 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %16, label %_llgo_15 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_5
  ]

_llgo_13:                                         ; preds = %_llgo_11, %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %13, i32 8, i1 false)
  %18 = load i64, ptr %17, align 4
  call void @llvm.coro.destroy(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 45 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = load %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc", ptr @"github.com/goplus/llgo/cl/_testrt/coroglobal.typedCompute", align 8
  %20 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %19, 0
  %21 = extractvalue %"github.com/goplus/llgo/cl/_testrt/coroglobal.ComputeFunc" %19, 1
  %22 = call ptr %20(ptr %21, i64 5)
  br label %_llgo_16

_llgo_14:                                         ; preds = %_llgo_12
  br label %_llgo_9

_llgo_15:                                         ; preds = %_llgo_12
  ret ptr %6

_llgo_16:                                         ; preds = %_llgo_21, %_llgo_13
  %23 = call i1 @llvm.coro.done(ptr %22)
  br i1 %23, label %_llgo_20, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  call void @llvm.coro.resume(ptr %22)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  %24 = call i1 @llvm.coro.done(ptr %22)
  br i1 %24, label %_llgo_20, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18
  %25 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %25, label %_llgo_22 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_16
  %26 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %27 = load i64, ptr %26, align 4
  call void @llvm.coro.destroy(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 46 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = call ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/coroglobal.testNamedFuncTypesAsync$1$coro"(ptr null)
  br label %_llgo_23

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_16

_llgo_22:                                         ; preds = %_llgo_19
  ret ptr %6

_llgo_23:                                         ; preds = %_llgo_28, %_llgo_20
  %29 = call i1 @llvm.coro.done(ptr %28)
  br i1 %29, label %_llgo_27, label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23
  call void @llvm.coro.resume(ptr %28)
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24
  %30 = call i1 @llvm.coro.done(ptr %28)
  br i1 %30, label %_llgo_27, label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_29 [
    i8 0, label %_llgo_28
    i8 1, label %_llgo_5
  ]

_llgo_27:                                         ; preds = %_llgo_25, %_llgo_23
  %32 = call ptr @llvm.coro.promise(ptr %28, i32 8, i1 false)
  %33 = load i64, ptr %32, align 4
  call void @llvm.coro.destroy(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 50 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %34 = add i64 %18, %27
  %35 = add i64 %34, %33
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_4

_llgo_28:                                         ; preds = %_llgo_26
  br label %_llgo_23

_llgo_29:                                         ; preds = %_llgo_26
  ret ptr %6

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_5

_llgo_31:                                         ; preds = %_llgo_4
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
  %0 = alloca i64, align 8
  %1 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %2 = call i1 @llvm.coro.alloc(token %1)
  br i1 %2, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 25 })
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

_llgo_4:                                          ; preds = %_llgo_7
  %8 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %8, label %_llgo_10 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_9, %_llgo_4, %_llgo_1
  %9 = call ptr @llvm.coro.free(token %1, ptr %7)
  call void @free(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_7:                                          ; preds = %_llgo_1
  store i64 777, ptr %0, align 4
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_1
  ret ptr %7

_llgo_9:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_10:                                         ; preds = %_llgo_4
  br label %_llgo_6
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

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

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

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
