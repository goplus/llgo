; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpunsafe'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpunsafe"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]" = type { i1, i32, %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]" }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]" = type { i1, i1 }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]" = type { i64, i32, %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]" }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]" = type { i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/tpunsafe.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"have", align 1
@1 = private unnamed_addr constant [4 x i8] c"want", align 1
@2 = private unnamed_addr constant [20 x i8] c"unsafe.Alignof error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_string" }, align 8
@3 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@4 = private unnamed_addr constant [21 x i8] c"unsafe.Offsetof error", align 1

define void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 12)
  call void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[bool]).check"(ptr %0, i64 1, i64 8, i64 1)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  call void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[int64]).check"(ptr %1, i64 8, i64 16, i64 8)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 12)
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[bool]).check$coro"(ptr %4, i64 1, i64 8, i64 1)
  br label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %6 = call i64 @llvm.coro.size.i64()
  %7 = call ptr @malloc(i64 %6)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi ptr [ null, %_llgo_0 ], [ %7, %_llgo_2 ]
  %9 = call ptr @llvm.coro.begin(token %2, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_20, %_llgo_19, %_llgo_11, %_llgo_10
  %10 = call i1 @llvm.coro.end(ptr %9, i1 false, token none)
  ret ptr %9

_llgo_5:                                          ; preds = %_llgo_24, %_llgo_23, %_llgo_20, %_llgo_19, %_llgo_14, %_llgo_11, %_llgo_10
  %11 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %11)
  %12 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %12, label %_llgo_4 [
    i8 0, label %_llgo_25
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_25, %_llgo_5
  %13 = call ptr @llvm.coro.free(token %2, ptr %9)
  call void @free(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %5)
  br i1 %14, label %_llgo_14, label %_llgo_15

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_1
  %15 = phi i1 [ true, %_llgo_1 ], [ false, %_llgo_10 ], [ false, %_llgo_11 ]
  %16 = call i1 @llvm.coro.done(ptr %5)
  br i1 %16, label %_llgo_7, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  br i1 %15, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %17 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %18 = getelementptr inbounds { ptr }, ptr %17, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %18, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %5)
  %19 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_11:                                         ; preds = %_llgo_9
  %20 = call ptr @llvm.coro.promise(ptr %5, i32 8, i1 false)
  %21 = getelementptr inbounds { ptr }, ptr %20, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %21, ptr %9)
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_4 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_10
  br label %_llgo_8

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_7
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_5

_llgo_15:                                         ; preds = %_llgo_7
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %25 = call ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[int64]).check$coro"(ptr %24, i64 8, i64 16, i64 8)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %30, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %25)
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_4 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_5
  ]

_llgo_20:                                         ; preds = %_llgo_18
  %32 = call ptr @llvm.coro.promise(ptr %25, i32 8, i1 false)
  %33 = getelementptr inbounds { ptr }, ptr %32, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %33, ptr %9)
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
  br label %_llgo_5

_llgo_25:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[bool]).check"(ptr %0, i64 %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %5 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %4, align 1
  %6 = icmp ne i64 1, %1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 20 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %10 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %9, align 1
  %11 = icmp ne i64 8, %2
  br i1 %11, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %14, i32 0, i32 1
  %16 = load i1, ptr %15, align 1
  %17 = icmp ne i64 1, %3
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[bool]).check$coro"(ptr %0, i64 %1, i64 %2, i64 %3) #0 {
_llgo_0:
  %4 = alloca { ptr }, align 8
  %5 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = call token @llvm.coro.id(i32 0, ptr %4, ptr null, ptr null)
  %7 = call i1 @llvm.coro.alloc(token %6)
  br i1 %7, label %_llgo_8, label %_llgo_9

_llgo_1:                                          ; preds = %_llgo_9
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %9 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %8, align 1
  %10 = icmp ne i64 1, %1
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 20 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  br label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %14 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %13, align 1
  %15 = icmp ne i64 8, %2
  br i1 %15, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  br label %_llgo_11

_llgo_5:                                          ; preds = %_llgo_3
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %18, i32 0, i32 1
  %20 = load i1, ptr %19, align 1
  %21 = icmp ne i64 1, %3
  br i1 %21, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_11

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_0
  %24 = call i64 @llvm.coro.size.i64()
  %25 = call ptr @malloc(i64 %24)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %26 = phi ptr [ null, %_llgo_0 ], [ %25, %_llgo_8 ]
  %27 = call ptr @llvm.coro.begin(token %6, ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_11
  %28 = call i1 @llvm.coro.end(ptr %27, i1 false, token none)
  ret ptr %27

_llgo_11:                                         ; preds = %_llgo_7, %_llgo_6, %_llgo_4, %_llgo_2
  %29 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %29)
  %30 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %30, label %_llgo_10 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_12
  ]

_llgo_12:                                         ; preds = %_llgo_13, %_llgo_11
  %31 = call ptr @llvm.coro.free(token %6, ptr %27)
  call void @free(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_10

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_12
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[int64]).check"(ptr %0, i64 %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %5 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %4, align 4
  %6 = icmp ne i64 8, %1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 20 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %10 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %9, align 4
  %11 = icmp ne i64 16, %2
  br i1 %11, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = icmp ne i64 8, %3
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[int64]).check$coro"(ptr %0, i64 %1, i64 %2, i64 %3) #0 {
_llgo_0:
  %4 = alloca { ptr }, align 8
  %5 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = call token @llvm.coro.id(i32 0, ptr %4, ptr null, ptr null)
  %7 = call i1 @llvm.coro.alloc(token %6)
  br i1 %7, label %_llgo_8, label %_llgo_9

_llgo_1:                                          ; preds = %_llgo_9
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %9 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %8, align 4
  %10 = icmp ne i64 8, %1
  br i1 %10, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 20 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  br label %_llgo_11

_llgo_3:                                          ; preds = %_llgo_1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %14 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %13, align 4
  %15 = icmp ne i64 16, %2
  br i1 %15, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  br label %_llgo_11

_llgo_5:                                          ; preds = %_llgo_3
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %18, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = icmp ne i64 8, %3
  br i1 %21, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 21 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  br label %_llgo_11

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_11

_llgo_8:                                          ; preds = %_llgo_0
  %24 = call i64 @llvm.coro.size.i64()
  %25 = call ptr @malloc(i64 %24)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_0
  %26 = phi ptr [ null, %_llgo_0 ], [ %25, %_llgo_8 ]
  %27 = call ptr @llvm.coro.begin(token %6, ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_11
  %28 = call i1 @llvm.coro.end(ptr %27, i1 false, token none)
  ret ptr %27

_llgo_11:                                         ; preds = %_llgo_7, %_llgo_6, %_llgo_4, %_llgo_2
  %29 = getelementptr inbounds { ptr }, ptr %4, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %29)
  %30 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %30, label %_llgo_10 [
    i8 0, label %_llgo_13
    i8 1, label %_llgo_12
  ]

_llgo_12:                                         ; preds = %_llgo_13, %_llgo_11
  %31 = call ptr @llvm.coro.free(token %6, ptr %27)
  call void @free(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_10

_llgo_13:                                         ; preds = %_llgo_11
  br label %_llgo_12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #1

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #2

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #3

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
