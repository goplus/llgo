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

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue { ptr, ptr } %1, 0
  %8 = extractvalue { ptr, ptr } %1, 1
  %9 = call ptr %7(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %9)
  %10 = call ptr @llvm.coro.promise(ptr %9, i32 8, i1 false)
  %11 = load i32, ptr %10, align 4
  call void @llvm.coro.destroy(ptr %9)
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %14 = icmp slt i64 %5, 0
  %15 = icmp sge i64 %5, %13
  %16 = or i1 %15, %14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %16)
  %17 = getelementptr inbounds i32, ptr %12, i64 %5
  store i32 %11, ptr %17, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/intgen.genInts$coro"(i64 %0, { ptr, ptr } %1) #0 {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %3 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %4 = call i1 @llvm.coro.alloc(token %3)
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_14, %_llgo_1
  %7 = phi i64 [ -1, %_llgo_1 ], [ %8, %_llgo_14 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %6
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = extractvalue { ptr, ptr } %1, 0
  %11 = extractvalue { ptr, ptr } %1, 1
  %12 = call ptr %10(ptr %11)
  br label %_llgo_10

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
  switch i8 %17, label %_llgo_18 [
    i8 0, label %_llgo_17
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_17, %_llgo_7, %_llgo_13
  %18 = call ptr @llvm.coro.free(token %3, ptr %16)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_18
  %19 = call i1 @llvm.coro.end(ptr %16, i1 false, token none)
  ret ptr %16

_llgo_10:                                         ; preds = %_llgo_15, %_llgo_3
  %20 = call i1 @llvm.coro.done(ptr %12)
  br i1 %20, label %_llgo_14, label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  call void @llvm.coro.resume(ptr %12)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %21 = call i1 @llvm.coro.done(ptr %12)
  br i1 %21, label %_llgo_14, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %22 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %22, label %_llgo_16 [
    i8 0, label %_llgo_15
    i8 1, label %_llgo_8
  ]

_llgo_14:                                         ; preds = %_llgo_12, %_llgo_10
  %23 = call ptr @llvm.coro.promise(ptr %12, i32 8, i1 false)
  %24 = load i32, ptr %23, align 4
  call void @llvm.coro.destroy(ptr %12)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %27 = icmp slt i64 %8, 0
  %28 = icmp sge i64 %8, %26
  %29 = or i1 %28, %27
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %29)
  %30 = getelementptr inbounds i32, ptr %25, i64 %8
  store i32 %24, ptr %30, align 4
  br label %_llgo_2

_llgo_15:                                         ; preds = %_llgo_13
  br label %_llgo_10

_llgo_16:                                         ; preds = %_llgo_13
  ret ptr %16

_llgo_17:                                         ; preds = %_llgo_7
  br label %_llgo_8

_llgo_18:                                         ; preds = %_llgo_7
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
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } { ptr @"__llgo_stub.rand$coro.cfy", ptr null })
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
  %16 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1$coro", ptr undef }, ptr %14, 1
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 1
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %19 = phi i64 [ -1, %_llgo_3 ], [ %20, %_llgo_5 ]
  %20 = add i64 %19, 1
  %21 = icmp slt i64 %20, %18
  br i1 %21, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 1
  %24 = icmp slt i64 %20, 0
  %25 = icmp sge i64 %20, %23
  %26 = or i1 %25, %24
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %26)
  %27 = getelementptr inbounds i32, ptr %22, i64 %20
  %28 = load i32, ptr %27, align 4
  %29 = call i32 (ptr, ...) @printf(ptr @1, i32 %28)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %30, i32 0, i32 0
  store i32 1, ptr %31, align 4
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %33 = getelementptr inbounds { ptr }, ptr %32, i32 0, i32 0
  store ptr %30, ptr %33, align 8
  %34 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound$coro", ptr undef }, ptr %32, 1
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } %34)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %37 = phi i64 [ -1, %_llgo_6 ], [ %38, %_llgo_8 ]
  %38 = add i64 %37, 1
  %39 = icmp slt i64 %38, %36
  br i1 %39, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 0
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  %42 = icmp slt i64 %38, 0
  %43 = icmp sge i64 %38, %41
  %44 = or i1 %43, %42
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %44)
  %45 = getelementptr inbounds i32, ptr %40, i64 %38
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, ...) @printf(ptr @2, i32 %46)
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
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } { ptr @"__llgo_stub.rand$coro.cfy", ptr null })
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
  %18 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1$coro", ptr undef }, ptr %16, 1
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } %18)
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %21 = phi i64 [ -1, %_llgo_4 ], [ %22, %_llgo_6 ]
  %22 = add i64 %21, 1
  %23 = icmp slt i64 %22, %20
  br i1 %23, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 0
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 1
  %26 = icmp slt i64 %22, 0
  %27 = icmp sge i64 %22, %25
  %28 = or i1 %27, %26
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %28)
  %29 = getelementptr inbounds i32, ptr %24, i64 %22
  %30 = load i32, ptr %29, align 4
  %31 = call i32 (ptr, ...) @printf(ptr @4, i32 %30)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_5
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %32, i32 0, i32 0
  store i32 1, ptr %33, align 4
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %35 = getelementptr inbounds { ptr }, ptr %34, i32 0, i32 0
  store ptr %32, ptr %35, align 8
  %36 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound$coro", ptr undef }, ptr %34, 1
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } %36)
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  %39 = phi i64 [ -1, %_llgo_7 ], [ %40, %_llgo_9 ]
  %40 = add i64 %39, 1
  %41 = icmp slt i64 %40, %38
  br i1 %41, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 0
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  %44 = icmp slt i64 %40, 0
  %45 = icmp sge i64 %40, %43
  %46 = or i1 %45, %44
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %46)
  %47 = getelementptr inbounds i32, ptr %42, i64 %40
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, ...) @printf(ptr @5, i32 %48)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_13

_llgo_11:                                         ; preds = %_llgo_0
  %50 = call i64 @llvm.coro.size.i64()
  %51 = call ptr @malloc(i64 %50)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_0
  %52 = phi ptr [ null, %_llgo_0 ], [ %51, %_llgo_11 ]
  %53 = call ptr @llvm.coro.begin(token %0, ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_10
  %54 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %54, label %_llgo_17 [
    i8 0, label %_llgo_16
    i8 1, label %_llgo_14
  ]

_llgo_14:                                         ; preds = %_llgo_16, %_llgo_13
  %55 = call ptr @llvm.coro.free(token %0, ptr %53)
  call void @free(ptr %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_17
  %56 = call i1 @llvm.coro.end(ptr %53, i1 false, token none)
  ret ptr %53

_llgo_16:                                         ; preds = %_llgo_13
  br label %_llgo_14

_llgo_17:                                         ; preds = %_llgo_13
  br label %_llgo_15
}

declare i32 @"github.com/goplus/llgo/cl/_testrt/intgen.main$1"(ptr)

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

; Function Attrs: presplitcoroutine
define linkonce ptr @"__llgo_stub.rand$coro.cfy"(ptr %0) #0 {
_llgo_0:
  %1 = alloca i32, align 4
  %2 = call token @llvm.coro.id(i32 0, ptr %1, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %4 = call i32 @rand()
  store i32 %4, ptr %1, align 4
  br label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @llvm.coro.size.i64()
  %6 = call ptr @malloc(i64 %5)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi ptr [ null, %_llgo_0 ], [ %6, %_llgo_2 ]
  %8 = call ptr @llvm.coro.begin(token %2, ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_1
  %9 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %9, label %_llgo_8 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_5
  ]

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %10 = call ptr @llvm.coro.free(token %2, ptr %8)
  call void @free(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_8
  %11 = call i1 @llvm.coro.end(ptr %8, i1 false, token none)
  ret ptr %8

_llgo_7:                                          ; preds = %_llgo_4
  br label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_4
  br label %_llgo_6
}

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound"(ptr)

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
