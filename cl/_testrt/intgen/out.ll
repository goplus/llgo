; ModuleID = 'github.com/goplus/llgo/cl/_testrt/intgen'
source_filename = "github.com/goplus/llgo/cl/_testrt/intgen"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %11)
  %12 = call ptr @llvm.coro.promise(ptr %11, i32 8, i1 false)
  %13 = load i32, ptr %12, align 4
  call void @llvm.coro.destroy(ptr %11)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = phi i32 [ %10, %_llgo_4 ], [ %13, %_llgo_5 ]
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %17 = icmp slt i64 %5, 0
  %18 = icmp sge i64 %5, %16
  %19 = or i1 %18, %17
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %19)
  %20 = getelementptr inbounds i32, ptr %15, i64 %5
  store i32 %14, ptr %20, align 4
  br label %_llgo_1
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.genInts$coro"(i64 %0, { ptr, ptr, i1 } %1) #0 {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_12, %_llgo_1
  %7 = phi i64 [ -1, %_llgo_1 ], [ %8, %_llgo_12 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %6
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = extractvalue { ptr, ptr, i1 } %1, 0
  %11 = extractvalue { ptr, ptr, i1 } %1, 1
  %12 = extractvalue { ptr, ptr, i1 } %1, 2
  br i1 %12, label %_llgo_11, label %_llgo_10

_llgo_4:                                          ; preds = %_llgo_2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %2, align 8
  br label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_0
  %13 = call i64 @llvm.coro.size.i64()
  %14 = call ptr @malloc(i64 %13)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %15 = phi ptr [ null, %_llgo_0 ], [ %14, %_llgo_5 ]
  %16 = call ptr @llvm.coro.begin(token %3, ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_4
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_21 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_20, %_llgo_7, %_llgo_16
  %18 = call ptr @llvm.coro.free(token %3, ptr %16)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_21
  %19 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_10:                                         ; preds = %_llgo_3
  %20 = call i32 %10(ptr %11)
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_3
  %21 = call ptr %10(ptr %11)
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_17, %_llgo_10
  %22 = phi i32 [ %20, %_llgo_10 ], [ %33, %_llgo_17 ]
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %25 = icmp slt i64 %8, 0
  %26 = icmp sge i64 %8, %24
  %27 = or i1 %26, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %27)
  %28 = getelementptr inbounds i32, ptr %23, i64 %8
  store i32 %22, ptr %28, align 4
  br label %_llgo_2

_llgo_13:                                         ; preds = %_llgo_18, %_llgo_11
  %29 = call i1 @llvm.coro.done(ptr %21)
  br i1 %29, label %_llgo_17, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  call void @llvm.coro.resume(ptr %21)
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  %30 = call i1 @llvm.coro.done(ptr %21)
  br i1 %30, label %_llgo_17, label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %31 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %31, label %_llgo_19 [
    i8 0, label %_llgo_18
    i8 1, label %_llgo_8
  ]

_llgo_17:                                         ; preds = %_llgo_15, %_llgo_13
  %32 = call ptr @llvm.coro.promise(ptr %21, i32 8, i1 false)
  %33 = load i32, ptr %32, align 4
  call void @llvm.coro.destroy(ptr %21)
  br label %_llgo_12

_llgo_18:                                         ; preds = %_llgo_16
  br label %_llgo_13

_llgo_19:                                         ; preds = %_llgo_16
  ret ptr %16

_llgo_20:                                         ; preds = %_llgo_7
  br label %_llgo_8

_llgo_21:                                         ; preds = %_llgo_7
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
  %1 = alloca i32, align 4
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %0, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %10 = call i64 @llvm.coro.size.i64()
  %11 = call ptr @malloc(i64 %10)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi ptr [ null, %_llgo_0 ], [ %11, %_llgo_2 ]
  %13 = call ptr @llvm.coro.begin(token %2, ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %14 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %14, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %15 = call ptr @llvm.coro.free(token %2, ptr %13)
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
  %0 = call token @llvm.coro.id(i32 0, ptr null, ptr null, ptr null)
  %1 = call i1 @llvm.coro.alloc(token %0)
  br i1 %1, label %_llgo_11, label %_llgo_12

_llgo_1:                                          ; preds = %_llgo_12
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } { ptr @__llgo_stub.rand, ptr null, i1 false })
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %4 = phi i64 [ -1, %_llgo_1 ], [ %5, %_llgo_3 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds i32, ptr %7, i64 %5
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr @3, i32 %13)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  store i32 1, ptr %15, align 4
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1", ptr undef, i1 undef }, ptr %16, 1
  %19 = insertvalue { ptr, ptr, i1 } %18, i1 false, 2
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } %19)
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %22 = phi i64 [ -1, %_llgo_4 ], [ %23, %_llgo_6 ]
  %23 = add i64 %22, 1
  %24 = icmp slt i64 %23, %21
  br i1 %24, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 0
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, 1
  %27 = icmp slt i64 %23, 0
  %28 = icmp sge i64 %23, %26
  %29 = or i1 %28, %27
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %29)
  %30 = getelementptr inbounds i32, ptr %25, i64 %23
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ...) @printf(ptr @4, i32 %31)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_5
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %33, i32 0, i32 0
  store i32 1, ptr %34, align 4
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr inbounds { ptr }, ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  %37 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound", ptr undef, i1 undef }, ptr %35, 1
  %38 = insertvalue { ptr, ptr, i1 } %37, i1 false, 2
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr, i1 } %38)
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %41 = phi i64 [ -1, %_llgo_7 ], [ %42, %_llgo_9 ]
  %42 = add i64 %41, 1
  %43 = icmp slt i64 %42, %40
  br i1 %43, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 0
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  %46 = icmp slt i64 %42, 0
  %47 = icmp sge i64 %42, %45
  %48 = or i1 %47, %46
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %48)
  %49 = getelementptr inbounds i32, ptr %44, i64 %42
  %50 = load i32, ptr %49, align 4
  %51 = call i32 (ptr, ...) @printf(ptr @5, i32 %50)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_13

_llgo_11:                                         ; preds = %_llgo_0
  %52 = call i64 @llvm.coro.size.i64()
  %53 = call ptr @malloc(i64 %52)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_0
  %54 = phi ptr [ null, %_llgo_0 ], [ %53, %_llgo_11 ]
  %55 = call ptr @llvm.coro.begin(token %0, ptr %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_10
  %56 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %56, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_14
  ]

_llgo_14:                                         ; preds = %_llgo_16, %_llgo_13
  %57 = call ptr @llvm.coro.free(token %0, ptr %55)
  call void @free(ptr %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_17
  %58 = call i1 @llvm.coro.end(ptr %55, i1 false, token none)
  ret ptr %55

_llgo_16:                                         ; preds = %_llgo_13
  br label %_llgo_14

_llgo_17:                                         ; preds = %_llgo_13
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
  %2 = alloca i32, align 4
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 2
  %8 = extractvalue { ptr } %1, 0
  store i32 %7, ptr %8, align 4
  %9 = extractvalue { ptr } %1, 0
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %3, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %15 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %15, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %16 = call ptr @llvm.coro.free(token %3, ptr %14)
  call void @free(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %17 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

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

declare void @llvm.coro.resume(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

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
  %2 = alloca i32, align 4
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %5 = extractvalue { ptr } %1, 0
  %6 = call i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %5)
  store i32 %6, ptr %2, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call i64 @llvm.coro.size.i64()
  %8 = call ptr @malloc(i64 %7)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi ptr [ null, %_llgo_0 ], [ %8, %_llgo_2 ]
  %10 = call ptr @llvm.coro.begin(token %3, ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %11 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %11, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %12 = call ptr @llvm.coro.free(token %3, ptr %10)
  call void @free(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %13 = call i1 @llvm.coro.end(ptr %10, i1 false, token none)
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
