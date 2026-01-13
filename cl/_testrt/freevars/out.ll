; ModuleID = 'github.com/goplus/llgo/cl/_testrt/freevars'
source_filename = "github.com/goplus/llgo/cl/_testrt/freevars"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/freevars.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/freevars.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/freevars.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/freevars.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2", ptr null, i1 false })
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2", ptr null, i1 false })
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %8 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %8, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %9 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr, i1 } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store { ptr, ptr, i1 } %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1", ptr undef, i1 undef }, ptr %2, 1
  %5 = insertvalue { ptr, ptr, i1 } %4, i1 false, 2
  %6 = extractvalue { ptr, ptr, i1 } %5, 0
  %7 = extractvalue { ptr, ptr, i1 } %5, 1
  %8 = extractvalue { ptr, ptr, i1 } %5, 2
  br i1 %8, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  call void %6(ptr %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call ptr %6(ptr %7, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  call void @llvm.coro.destroy(ptr %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$coro"({ ptr, ptr, i1 } %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  store { ptr, ptr, i1 } %0, ptr %5, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr inbounds { ptr }, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1", ptr undef, i1 undef }, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i1 } %8, i1 false, 2
  %10 = extractvalue { ptr, ptr, i1 } %9, 0
  %11 = extractvalue { ptr, ptr, i1 } %9, 1
  %12 = extractvalue { ptr, ptr, i1 } %9, 2
  br i1 %12, label %_llgo_9, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %3, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %17 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_11, %_llgo_3
  %18 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_10, %_llgo_13, %_llgo_11, %_llgo_3
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_15, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %3, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_1
  call void %10(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_1
  %21 = call ptr %10(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_14, %_llgo_8
  br label %_llgo_5

_llgo_11:                                         ; preds = %_llgo_9
  %22 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %23 = getelementptr inbounds { ptr }, ptr %22, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %23, ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %21)
  %24 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %24, label %_llgo_4 [
    i8 0, label %_llgo_12
    i8 1, label %_llgo_5
  ]

_llgo_12:                                         ; preds = %_llgo_11
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %21)
  br i1 %25, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %26 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %26)
  br label %_llgo_5

_llgo_14:                                         ; preds = %_llgo_12
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_10

_llgo_15:                                         ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr null, 1
  %10 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  %11 = xor i1 %10, true
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %12 = extractvalue { ptr } %2, 0
  %13 = load { ptr, ptr, i1 }, ptr %12, align 8
  %14 = extractvalue { ptr, ptr, i1 } %13, 0
  %15 = extractvalue { ptr, ptr, i1 } %13, 1
  %16 = extractvalue { ptr, ptr, i1 } %13, 2
  br i1 %16, label %_llgo_4, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %17 = extractvalue { ptr } %2, 0
  %18 = load { ptr, ptr, i1 }, ptr %17, align 8
  %19 = extractvalue { ptr, ptr, i1 } %18, 0
  %20 = extractvalue { ptr, ptr, i1 } %18, 1
  %21 = extractvalue { ptr, ptr, i1 } %18, 2
  br i1 %21, label %_llgo_7, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_1
  call void %14(ptr %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_1
  %22 = call ptr %14(ptr %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  call void @llvm.coro.destroy(ptr %22)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  ret void

_llgo_6:                                          ; preds = %_llgo_2
  call void %19(ptr %20, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  %23 = call ptr %19(ptr %20, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %23)
  call void @llvm.coro.destroy(ptr %23)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1$coro"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) #0 {
_llgo_0:
  %2 = alloca { ptr }, align 8
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_9
  %6 = load { ptr }, ptr %0, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr null, 1
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  %15 = xor i1 %14, true
  br i1 %15, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %16 = extractvalue { ptr } %6, 0
  %17 = load { ptr, ptr, i1 }, ptr %16, align 8
  %18 = extractvalue { ptr, ptr, i1 } %17, 0
  %19 = extractvalue { ptr, ptr, i1 } %17, 1
  %20 = extractvalue { ptr, ptr, i1 } %17, 2
  br i1 %20, label %_llgo_11, label %_llgo_10

_llgo_3:                                          ; preds = %_llgo_1
  %21 = extractvalue { ptr } %6, 0
  %22 = load { ptr, ptr, i1 }, ptr %21, align 8
  %23 = extractvalue { ptr, ptr, i1 } %22, 0
  %24 = extractvalue { ptr, ptr, i1 } %22, 1
  %25 = extractvalue { ptr, ptr, i1 } %22, 2
  br i1 %25, label %_llgo_18, label %_llgo_17

_llgo_4:                                          ; preds = %_llgo_0
  %26 = call i64 @llvm.coro.size.i64()
  %27 = call ptr @malloc(i64 %26)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %28 = phi ptr [ null, %_llgo_0 ], [ %27, %_llgo_4 ]
  %29 = call ptr @llvm.coro.begin(token %4, ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %30 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %30, label %_llgo_6 [
    i8 0, label %_llgo_9
    i8 1, label %_llgo_7
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_20, %_llgo_13, %_llgo_5
  %31 = call i1 @llvm.coro.end(ptr %29, i1 false, token none)
  ret ptr %29

_llgo_7:                                          ; preds = %_llgo_19, %_llgo_22, %_llgo_20, %_llgo_12, %_llgo_15, %_llgo_13, %_llgo_5
  %32 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %32, label %_llgo_6 [
    i8 0, label %_llgo_24
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_24, %_llgo_7
  %33 = call ptr @llvm.coro.free(token %4, ptr %29)
  call void @free(ptr %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_5
  br label %_llgo_1

_llgo_10:                                         ; preds = %_llgo_2
  call void %18(ptr %19, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_2
  %34 = call ptr %18(ptr %19, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_16, %_llgo_10
  br label %_llgo_7

_llgo_13:                                         ; preds = %_llgo_11
  %35 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr }, ptr %35, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %36, ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %34)
  %37 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %37, label %_llgo_6 [
    i8 0, label %_llgo_14
    i8 1, label %_llgo_7
  ]

_llgo_14:                                         ; preds = %_llgo_13
  %38 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %34)
  br i1 %38, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  br label %_llgo_7

_llgo_16:                                         ; preds = %_llgo_14
  call void @llvm.coro.destroy(ptr %34)
  br label %_llgo_12

_llgo_17:                                         ; preds = %_llgo_3
  call void %23(ptr %24, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_3
  %40 = call ptr %23(ptr %24, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_23, %_llgo_17
  br label %_llgo_7

_llgo_20:                                         ; preds = %_llgo_18
  %41 = call ptr @llvm.coro.promise(ptr %40, i32 8, i1 false)
  %42 = getelementptr inbounds { ptr }, ptr %41, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %42, ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %40)
  %43 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %43, label %_llgo_6 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_7
  ]

_llgo_21:                                         ; preds = %_llgo_20
  %44 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %40)
  br i1 %44, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %45 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  br label %_llgo_7

_llgo_23:                                         ; preds = %_llgo_21
  call void @llvm.coro.destroy(ptr %40)
  br label %_llgo_19

_llgo_24:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$2$coro"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  %1 = alloca { ptr }, align 8
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_7
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %3, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  %9 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %9, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5, %_llgo_3
  %10 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_1, %_llgo_3
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_4 [
    i8 0, label %_llgo_8
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_5
  %12 = call ptr @llvm.coro.free(token %3, ptr %8)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_3
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret void
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

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

declare void @llvm.coro.destroy(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
