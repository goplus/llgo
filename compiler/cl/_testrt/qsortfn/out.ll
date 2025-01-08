; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [14 x i8] c"Comp => Comp\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [12 x i8] c"fn => Comp\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [12 x i8] c"Comp => fn\0A\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@6 = private unnamed_addr constant [10 x i8] c"fn => fn\0A\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@8 = private unnamed_addr constant [26 x i8] c"qsort.Comp => qsort.Comp\0A\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@10 = private unnamed_addr constant [18 x i8] c"fn => qsort.Comp\0A\00", align 1
@11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@12 = private unnamed_addr constant [18 x i8] c"qsort.Comp => fn\0A\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@14 = private unnamed_addr constant [18 x i8] c"Comp => qsort.fn\0A\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@16 = private unnamed_addr constant [22 x i8] c"qsort.Comp => Comp()\0A\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@18 = private unnamed_addr constant [22 x i8] c"Comp => qsort.Comp()\0A\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @main.sort1a()
  call void @main.sort1b()
  call void @main.sort2a()
  call void @main.sort2b()
  call void @main.sort3a()
  call void @main.sort3b()
  call void @main.sort4a()
  call void @main.sort4b()
  call void @main.sort5a()
  call void @main.sort5b()
  ret i32 0
}

define void @main.sort1a() {
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort1a$1")
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

define i32 @"main.sort1a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort1b() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @2)
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort1b$1")
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
  %17 = call i32 (ptr, ...) @printf(ptr @3, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"main.sort1b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort2a() {
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort2a$1")
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

define i32 @"main.sort2a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort2b() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @6)
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort2b$1")
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
  %17 = call i32 (ptr, ...) @printf(ptr @7, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"main.sort2b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort3a() {
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort3a$1")
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

define i32 @"main.sort3a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort3b() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @10)
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort3b$1")
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
  %17 = call i32 (ptr, ...) @printf(ptr @11, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"main.sort3b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort4a() {
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort4a$1")
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

define i32 @"main.sort4a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort4b() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @14)
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort4b$1")
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
  %17 = call i32 (ptr, ...) @printf(ptr @15, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"main.sort4b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort5a() {
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort5a$1")
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

define i32 @"main.sort5a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

define void @main.sort5b() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @18)
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
  call void @qsort(ptr %7, i64 5, i64 8, ptr @"main.sort5b$1")
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
  %17 = call i32 (ptr, ...) @printf(ptr @19, i64 %16)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"main.sort5b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = sub i64 %2, %3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
