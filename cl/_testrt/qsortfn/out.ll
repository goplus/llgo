; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsortfn'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsortfn"

@"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [14 x i8] c"Comp => Comp\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [14 x i8] c"Comp => Comp\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [12 x i8] c"fn => Comp\0A\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@6 = private unnamed_addr constant [12 x i8] c"fn => Comp\0A\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@8 = private unnamed_addr constant [12 x i8] c"Comp => fn\0A\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@10 = private unnamed_addr constant [12 x i8] c"Comp => fn\0A\00", align 1
@11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@12 = private unnamed_addr constant [10 x i8] c"fn => fn\0A\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@14 = private unnamed_addr constant [10 x i8] c"fn => fn\0A\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@16 = private unnamed_addr constant [26 x i8] c"qsort.Comp => qsort.Comp\0A\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@18 = private unnamed_addr constant [26 x i8] c"qsort.Comp => qsort.Comp\0A\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@20 = private unnamed_addr constant [18 x i8] c"fn => qsort.Comp\0A\00", align 1
@21 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@22 = private unnamed_addr constant [18 x i8] c"fn => qsort.Comp\0A\00", align 1
@23 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@24 = private unnamed_addr constant [18 x i8] c"qsort.Comp => fn\0A\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@26 = private unnamed_addr constant [18 x i8] c"qsort.Comp => fn\0A\00", align 1
@27 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@28 = private unnamed_addr constant [18 x i8] c"Comp => qsort.fn\0A\00", align 1
@29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@30 = private unnamed_addr constant [18 x i8] c"Comp => qsort.fn\0A\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@32 = private unnamed_addr constant [22 x i8] c"qsort.Comp => Comp()\0A\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@34 = private unnamed_addr constant [22 x i8] c"qsort.Comp => Comp()\0A\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@36 = private unnamed_addr constant [22 x i8] c"Comp => qsort.Comp()\0A\00", align 1
@37 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@38 = private unnamed_addr constant [22 x i8] c"Comp => qsort.Comp()\0A\00", align 1
@39 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b"()
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a"()
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b"()
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @llvm.coro.size.i64()
  %5 = call ptr @malloc(i64 %4)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi ptr [ null, %_llgo_0 ], [ %5, %_llgo_2 ]
  %7 = call ptr @llvm.coro.begin(token %2, ptr %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %8 = call i1 @llvm.coro.end(ptr %7, i1 false, token none)
  ret ptr %7

_llgo_5:                                          ; preds = %_llgo_1
  %9 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %9)
  %10 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %10, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %11 = call ptr @llvm.coro.free(token %2, ptr %7)
  call void @free(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @1, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @2)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @3, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @4)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @5, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @6)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @7, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @9, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @10)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @11, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @12)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @13, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @14)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @15, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @16)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @17, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @18)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @19, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @20)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @21, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @22)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @23, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @24)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @25, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @26)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @27, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @28)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @29, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @30)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @31, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @32)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @33, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @34)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @35, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @36)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  %5 = getelementptr inbounds i64, ptr %1, i64 3
  %6 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %2, align 4
  store i64 8, ptr %3, align 4
  store i64 23, ptr %4, align 4
  store i64 2, ptr %5, align 4
  store i64 7, ptr %6, align 4
  %7 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1")
  %8 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %9 = phi i64 [ -1, %_llgo_0 ], [ %10, %_llgo_2 ]
  %10 = add i64 %9, 1
  %11 = icmp slt i64 %10, 5
  br i1 %11, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %12 = icmp slt i64 %10, 0
  %13 = icmp sge i64 %10, 5
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %1, i64 %10
  %16 = load i64, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr @37, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_1:                                          ; preds = %_llgo_6
  %4 = call i32 (ptr, ...) @printf(ptr @38)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %6 = getelementptr inbounds i64, ptr %5, i64 0
  %7 = getelementptr inbounds i64, ptr %5, i64 1
  %8 = getelementptr inbounds i64, ptr %5, i64 2
  %9 = getelementptr inbounds i64, ptr %5, i64 3
  %10 = getelementptr inbounds i64, ptr %5, i64 4
  store i64 100, ptr %6, align 4
  store i64 8, ptr %7, align 4
  store i64 23, ptr %8, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %10, align 4
  %11 = getelementptr inbounds i64, ptr %5, i64 0
  call void @qsort(ptr %11, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1")
  %12 = load [5 x i64], ptr %5, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %13 = phi i64 [ -1, %_llgo_1 ], [ %14, %_llgo_3 ]
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %14, 5
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = icmp slt i64 %14, 0
  %17 = icmp sge i64 %14, 5
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %5, i64 %14
  %20 = load i64, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr @39, i64 %20)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_0
  %22 = call i64 @llvm.coro.size.i64()
  %23 = call ptr @malloc(i64 %22)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_0
  %24 = phi ptr [ null, %_llgo_0 ], [ %23, %_llgo_5 ]
  %25 = call ptr @llvm.coro.begin(token %2, ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_8
  %26 = call i1 @llvm.coro.end(ptr %25, i1 false, token none)
  ret ptr %25

_llgo_8:                                          ; preds = %_llgo_4
  %27 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %27)
  %28 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %28, label %_llgo_7 [
    i8 0, label %_llgo_10
    i8 1, label %_llgo_9
  ]

_llgo_9:                                          ; preds = %_llgo_10, %_llgo_8
  %29 = call ptr @llvm.coro.free(token %2, ptr %25)
  call void @free(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_7

_llgo_10:                                         ; preds = %_llgo_8
  br label %_llgo_9
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1$coro"(ptr %0, ptr %1) #0 {
_llgo_0:
  %2 = alloca { ptr, i32 }, align 8
  %3 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = call token @llvm.coro.id(i32 0, ptr %2, ptr null, ptr null)
  %5 = call i1 @llvm.coro.alloc(token %4)
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %6 = load i64, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %4, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %4, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
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
declare i1 @llvm.coro.end(ptr, i1, token) #2

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #2

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #4

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

attributes #0 = { presplitcoroutine }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind memory(argmem: read) }
