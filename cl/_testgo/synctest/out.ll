; ModuleID = 'github.com/goplus/llgo/cl/_testgo/synctest'
source_filename = "github.com/goplus/llgo/cl/_testgo/synctest"

%sync.Once = type { %sync.Mutex, i1 }
%sync.Mutex = type { %"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex", i32 }
%"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex" = type { [64 x i8] }
%sync.WaitGroup = type { %"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Mutex", %"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Cond", i64, i32 }
%"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.Cond" = type { [48 x i8] }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/synctest.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testgo/synctest.once" = global %sync.Once zeroinitializer, align 4
@"github.com/goplus/llgo/cl/_testgo/synctest.result" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testgo/synctest.wg" = global %sync.WaitGroup zeroinitializer, align 8
@0 = private unnamed_addr constant [13 x i8] c"starting test", align 1
@1 = private unnamed_addr constant [18 x i8] c"creating goroutine", align 1
@2 = private unnamed_addr constant [21 x i8] c"waiting for goroutine", align 1
@3 = private unnamed_addr constant [14 x i8] c"done, result =", align 1
@4 = private unnamed_addr constant [19 x i8] c"once.Do: first call", align 1
@5 = private unnamed_addr constant [39 x i8] c"once.Do: second call - should not print", align 1
@6 = private unnamed_addr constant [24 x i8] c"goroutine: result set to", align 1

define void @"github.com/goplus/llgo/cl/_testgo/synctest.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/synctest.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/synctest.init$guard", align 1
  call void @sync.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/synctest.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"sync.(*Once).Do"(ptr @"github.com/goplus/llgo/cl/_testgo/synctest.once", { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/synctest.main$1", ptr null })
  call void @"sync.(*Once).Do"(ptr @"github.com/goplus/llgo/cl/_testgo/synctest.once", { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/synctest.main$2", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"sync.(*WaitGroup).Add"(ptr @"github.com/goplus/llgo/cl/_testgo/synctest.wg", i64 1)
  %0 = call ptr @malloc(i64 8)
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/synctest.main$3", ptr %1, align 8
  %2 = alloca i8, i64 8, align 1
  %3 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %2, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/synctest._llgo_routine$1", ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 21 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"sync.(*WaitGroup).Wait"(ptr @"github.com/goplus/llgo/cl/_testgo/synctest.wg")
  %4 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/synctest.result", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/synctest.main$1"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 19 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/synctest.main$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/synctest.main$3"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/synctest.main$3", %_llgo_2), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/synctest.main$3", %_llgo_3), ptr %8, align 8
  %13 = load i64, ptr %7, align 4
  %14 = load ptr, ptr %10, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %18 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 1
  store ptr @"github.com/goplus/llgo/cl/_testgo/synctest.wg", ptr %19, align 8
  store ptr %17, ptr %10, align 8
  store i64 42, ptr @"github.com/goplus/llgo/cl/_testgo/synctest.result", align 4
  %20 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/synctest.result", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/synctest.main$3", %_llgo_6), ptr %9, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/synctest.main$3", %_llgo_3), ptr %9, align 8
  %21 = load ptr, ptr %8, align 8
  indirectbr ptr %21, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_8
  ret void

_llgo_7:                                          ; preds = %_llgo_2
  %22 = load ptr, ptr %10, align 8
  %23 = load { ptr, ptr }, ptr %22, align 8
  %24 = extractvalue { ptr, ptr } %23, 0
  store ptr %24, ptr %10, align 8
  %25 = extractvalue { ptr, ptr } %23, 1
  call void @"sync.(*WaitGroup).Done"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %22)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %27)
  %28 = load ptr, ptr %9, align 8
  indirectbr ptr %28, [label %_llgo_3, label %_llgo_6]
}

declare void @sync.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"sync.(*Once).Do"(ptr, { ptr, ptr })

declare void @"sync.(*WaitGroup).Add"(ptr, i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/synctest._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  call void %2()
  call void @free(ptr %0)
  ret ptr null
}

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare void @"sync.(*WaitGroup).Wait"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"sync.(*WaitGroup).Done"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

attributes #0 = { returns_twice }
