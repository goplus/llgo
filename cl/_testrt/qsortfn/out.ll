; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsortfn'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsortfn"

@"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard" = global i1 false, align 1
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @1, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @2)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @3, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @4)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @5, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @6)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @7, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @9, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @11, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @12)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @13, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @14)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @15, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @16)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @17, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b"() {
_llgo_0:
  %0 = call i32 (ptr, ...) @printf(ptr @18)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds i64, ptr %1, i64 0
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds i64, ptr %1, i64 1
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds i64, ptr %1, i64 2
  %8 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds i64, ptr %1, i64 3
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 100, ptr %3, align 4
  store i64 8, ptr %5, align 4
  store i64 23, ptr %7, align 4
  store i64 2, ptr %9, align 4
  store i64 7, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %1, i64 0
  call void @qsort(ptr %13, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1")
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load [5 x i64], ptr %1, align 4
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %16 = phi i64 [ -1, %_llgo_0 ], [ %17, %_llgo_2 ]
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %17, 5
  br i1 %18, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %19 = icmp slt i64 %17, 0
  %20 = icmp sge i64 %17, 5
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21, i64 %17, i64 5)
  %22 = getelementptr inbounds i64, ptr %1, i64 %17
  %23 = load i64, ptr %22, align 4
  %24 = call i32 (ptr, ...) @printf(ptr @19, i64 %23)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load i64, ptr %0, align 4
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %1, align 4
  %6 = sub i64 %3, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @qsort(ptr, i64, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1, i64, i64)
