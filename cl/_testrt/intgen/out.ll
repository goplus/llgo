; ModuleID = 'github.com/goplus/llgo/cl/_testrt/intgen'
source_filename = "github.com/goplus/llgo/cl/_testrt/intgen"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/intgen.generator" = type { i32 }

@"github.com/goplus/llgo/cl/_testrt/intgen.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 %0, { ptr, ptr, i1 } %1) {
_llgo_0:
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_6 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue { ptr, ptr, i1 } %1, 0
  %8 = extractvalue { ptr, ptr, i1 } %1, 1
  %9 = extractvalue { ptr, ptr, i1 } %1, 2
  br i1 %9, label %_llgo_5, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2

_llgo_4:                                          ; preds = %_llgo_2
  %10 = call i32 %7(ptr %8)
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_2
  %11 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %11)
  %12 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %13 = getelementptr inbounds { ptr, i32 }, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  call void @llvm.coro.destroy(ptr %11)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %15 = phi i32 [ %10, %_llgo_4 ], [ %14, %_llgo_5 ]
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %18 = icmp slt i64 %5, 0
  %19 = icmp sge i64 %5, %17
  %20 = or i1 %19, %18
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %20)
  %21 = getelementptr inbounds i32, ptr %16, i64 %5
  store i32 %15, ptr %21, align 4
  br label %_llgo_1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.genInts$coro"(i64 %0, { ptr, ptr, i1 } %1) #0 {
_llgo_0:
  %2 = alloca { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, align 8
  %3 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_12, %_llgo_1
  %8 = phi i64 [ -1, %_llgo_1 ], [ %9, %_llgo_12 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, %7
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %11 = extractvalue { ptr, ptr, i1 } %1, 0
  %12 = extractvalue { ptr, ptr, i1 } %1, 1
  %13 = extractvalue { ptr, ptr, i1 } %1, 2
  br i1 %13, label %_llgo_11, label %_llgo_10

_llgo_4:                                          ; preds = %_llgo_2
  %14 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr %2, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %14, align 8
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %15 = call i64 @llvm.coro.size.i64()
  %16 = call ptr @malloc(i64 %15)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %17 = phi ptr [ null, %_llgo_0 ], [ %16, %_llgo_5 ]
  %18 = call ptr @llvm.coro.begin(token %4, ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_17, %_llgo_16
  %19 = call i1 @llvm.coro.end(ptr %18, i1 false, token none)
  ret ptr %18

_llgo_8:                                          ; preds = %_llgo_4, %_llgo_20, %_llgo_17, %_llgo_16
  %20 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %20)
  %21 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %21, label %_llgo_7 [
    i8 0, label %_llgo_22
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_22, %_llgo_8
  %22 = call ptr @llvm.coro.free(token %4, ptr %18)
  call void @free(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_3
  %23 = call i32 %11(ptr %12)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_3
  %24 = call ptr %11(ptr %12)
  br label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_21, %_llgo_10
  %25 = phi i32 [ %23, %_llgo_10 ], [ %44, %_llgo_21 ]
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 1
  %28 = icmp slt i64 %9, 0
  %29 = icmp sge i64 %9, %27
  %30 = or i1 %29, %28
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %30)
  %31 = getelementptr inbounds i32, ptr %26, i64 %9
  store i32 %25, ptr %31, align 4
  br label %_llgo_2

_llgo_13:                                         ; preds = %_llgo_14
  %32 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %24)
  br i1 %32, label %_llgo_20, label %_llgo_21

_llgo_14:                                         ; preds = %_llgo_19, %_llgo_18, %_llgo_11
  %33 = phi i1 [ true, %_llgo_11 ], [ false, %_llgo_16 ], [ false, %_llgo_17 ]
  %34 = call i1 @llvm.coro.done(ptr %24)
  br i1 %34, label %_llgo_13, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  br i1 %33, label %_llgo_16, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_15
  %35 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %36 = getelementptr inbounds { ptr, i32 }, ptr %35, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %36, ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %24)
  %37 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %37, label %_llgo_7 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_8
  ]

_llgo_17:                                         ; preds = %_llgo_15
  %38 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %39 = getelementptr inbounds { ptr, i32 }, ptr %38, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %39, ptr %18)
  %40 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %40, label %_llgo_7 [
    i8 0, label %_llgo_19
    i8 1, label %_llgo_8
  ]

_llgo_18:                                         ; preds = %_llgo_16
  br label %_llgo_14

_llgo_19:                                         ; preds = %_llgo_17
  br label %_llgo_14

_llgo_20:                                         ; preds = %_llgo_13
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  br label %_llgo_8

_llgo_21:                                         ; preds = %_llgo_13
  %42 = call ptr @llvm.coro.promise(ptr %24, i32 8, i1 false)
  %43 = getelementptr inbounds { ptr, i32 }, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  call void @llvm.coro.destroy(ptr %24)
  br label %_llgo_12

_llgo_22:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %2 = load i32, ptr %1, align 4
  %3 = add i32 %2, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$coro"(ptr %0) #0 {
_llgo_0:
  %1 = alloca { ptr, i32 }, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
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
  %17 = getelementptr inbounds { ptr, i32 }, ptr %1, i32 0, i32 0
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

define void @"github.com/goplus/llgo/cl/_testrt/intgen.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/intgen.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/intgen.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/intgen.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } { ptr @__llgo_stub.rand, ptr null, i1 false })
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_2 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp sge i64 %3, %6
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds i32, ptr %5, i64 %3
  %11 = load i32, ptr %10, align 4
  %12 = call i32 (ptr, ...) @printf(ptr @0, i32 %11)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr inbounds { ptr }, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1", ptr undef, i1 undef }, ptr %14, 1
  %17 = insertvalue { ptr, ptr, i1 } %16, i1 false, 2
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } %17)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %20 = phi i64 [ -1, %_llgo_3 ], [ %21, %_llgo_5 ]
  %21 = add i64 %20, 1
  %22 = icmp slt i64 %21, %19
  br i1 %22, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, 1
  %25 = icmp slt i64 %21, 0
  %26 = icmp sge i64 %21, %24
  %27 = or i1 %26, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %27)
  %28 = getelementptr inbounds i32, ptr %23, i64 %21
  %29 = load i32, ptr %28, align 4
  %30 = call i32 (ptr, ...) @printf(ptr @1, i32 %29)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %31, i32 0, i32 0
  store i32 1, ptr %32, align 4
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr inbounds { ptr }, ptr %33, i32 0, i32 0
  store ptr %31, ptr %34, align 8
  %35 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound", ptr undef, i1 undef }, ptr %33, 1
  %36 = insertvalue { ptr, ptr, i1 } %35, i1 false, 2
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } %36)
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %39 = phi i64 [ -1, %_llgo_6 ], [ %40, %_llgo_8 ]
  %40 = add i64 %39, 1
  %41 = icmp slt i64 %40, %38
  br i1 %41, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 0
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  %44 = icmp slt i64 %40, 0
  %45 = icmp sge i64 %40, %43
  %46 = or i1 %45, %44
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %46)
  %47 = getelementptr inbounds i32, ptr %42, i64 %40
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, ...) @printf(ptr @2, i32 %48)
  br label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_7
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_11, label %_llgo_12

_llgo_1:                                          ; preds = %_llgo_12
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } { ptr @__llgo_stub.rand, ptr null, i1 false })
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %6 = phi i64 [ -1, %_llgo_1 ], [ %7, %_llgo_3 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %5
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 1
  %11 = icmp slt i64 %7, 0
  %12 = icmp sge i64 %7, %10
  %13 = or i1 %12, %11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %13)
  %14 = getelementptr inbounds i32, ptr %9, i64 %7
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr @3, i32 %15)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %17, align 4
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %19 = getelementptr inbounds { ptr }, ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1", ptr undef, i1 undef }, ptr %18, 1
  %21 = insertvalue { ptr, ptr, i1 } %20, i1 false, 2
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } %21)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %24 = phi i64 [ -1, %_llgo_4 ], [ %25, %_llgo_6 ]
  %25 = add i64 %24, 1
  %26 = icmp slt i64 %25, %23
  br i1 %26, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 0
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 1
  %29 = icmp slt i64 %25, 0
  %30 = icmp sge i64 %25, %28
  %31 = or i1 %30, %29
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %31)
  %32 = getelementptr inbounds i32, ptr %27, i64 %25
  %33 = load i32, ptr %32, align 4
  %34 = call i32 (ptr, ...) @printf(ptr @4, i32 %33)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_5
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %35, i32 0, i32 0
  store i32 1, ptr %36, align 4
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %38 = getelementptr inbounds { ptr }, ptr %37, i32 0, i32 0
  store ptr %35, ptr %38, align 8
  %39 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound", ptr undef, i1 undef }, ptr %37, 1
  %40 = insertvalue { ptr, ptr, i1 } %39, i1 false, 2
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } %40)
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %43 = phi i64 [ -1, %_llgo_7 ], [ %44, %_llgo_9 ]
  %44 = add i64 %43, 1
  %45 = icmp slt i64 %44, %42
  br i1 %45, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 0
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  %48 = icmp slt i64 %44, 0
  %49 = icmp sge i64 %44, %47
  %50 = or i1 %49, %48
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %50)
  %51 = getelementptr inbounds i32, ptr %46, i64 %44
  %52 = load i32, ptr %51, align 4
  %53 = call i32 (ptr, ...) @printf(ptr @5, i32 %52)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_0
  %54 = call i64 @llvm.coro.size.i64()
  %55 = call ptr @malloc(i64 %54)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_0
  %56 = phi ptr [ null, %_llgo_0 ], [ %55, %_llgo_11 ]
  %57 = call ptr @llvm.coro.begin(token %2, ptr %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_15, %_llgo_14
  %58 = call i1 @llvm.coro.end(ptr %57, i1 false, token none)
  ret ptr %57

_llgo_14:                                         ; preds = %_llgo_10
  %59 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %59)
  %60 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %60, label %_llgo_13 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_15
  ]

_llgo_15:                                         ; preds = %_llgo_16, %_llgo_14
  %61 = call ptr @llvm.coro.free(token %2, ptr %57)
  call void @free(ptr %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_13

_llgo_16:                                         ; preds = %_llgo_14
  br label %_llgo_15
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.main$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, 2
  %5 = extractvalue { ptr } %1, 0
  store i32 %4, ptr %5, align 4
  %6 = extractvalue { ptr } %1, 0
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 2
  %9 = extractvalue { ptr } %1, 0
  store i32 %8, ptr %9, align 4
  %10 = extractvalue { ptr } %1, 0
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_2 ]
  %16 = call ptr @llvm.coro.begin(token %4, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %17 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_5:                                          ; preds = %_llgo_1
  %18 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %18)
  %19 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %19, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %20 = call ptr @llvm.coro.free(token %4, ptr %16)
  call void @free(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

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

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

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

declare i32 @rand()

define linkonce i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = tail call i32 @rand()
  ret i32 %1
}

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %2)
  ret i32 %3
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound$coro"(ptr %0) #0 {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = extractvalue { ptr } %1, 0
  %7 = call i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %6)
  %8 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %9 = call i64 @llvm.coro.size.i64()
  %10 = call ptr @malloc(i64 %9)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = phi ptr [ null, %_llgo_0 ], [ %10, %_llgo_2 ]
  %12 = call ptr @llvm.coro.begin(token %4, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %13 = call i1 @llvm.coro.end(ptr %12, i1 false, token none)
  ret ptr %12

_llgo_5:                                          ; preds = %_llgo_1
  %14 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %14)
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %16 = call ptr @llvm.coro.free(token %4, ptr %12)
  call void @free(ptr %16)
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
