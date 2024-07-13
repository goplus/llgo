; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@1 = private unnamed_addr constant [1 x i8] c"b", align 1
@2 = private unnamed_addr constant [1 x i8] c"c", align 1
@3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 1, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %3, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 1
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @1, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 1, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %12, ptr %8, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 2
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @2, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 1, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %17, ptr %13, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, i32 0, i32 0
  store ptr %2, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, i32 0, i32 1
  store i64 3, ptr %20, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, i32 0, i32 2
  store i64 3, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, align 8
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, 1
  %24 = add i64 %23, 1
  %25 = alloca ptr, i64 %24, align 8
  br label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_6
  %26 = phi i64 [ 0, %_llgo_6 ], [ %31, %_llgo_3 ]
  %27 = getelementptr ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1
  %30 = call i32 (ptr, ...) @printf(ptr @3, ptr %28)
  %31 = add i64 %26, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %32 = phi i64 [ 0, %_llgo_0 ], [ %46, %_llgo_5 ]
  %33 = icmp slt i64 %32, %23
  br i1 %33, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, 0
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, 1
  %36 = icmp slt i64 %32, 0
  %37 = icmp sge i64 %32, %35
  %38 = or i1 %37, %36
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %38)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i64 %32
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %39, align 8
  %41 = getelementptr ptr, ptr %25, i64 %32
  %42 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %40, 1
  %43 = add i64 %42, 1
  %44 = alloca i8, i64 %43, align 1
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %44, %"github.com/goplus/llgo/internal/runtime.String" %40)
  store ptr %45, ptr %41, align 8
  %46 = add i64 %32, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %47 = getelementptr ptr, ptr %25, i64 %23
  store ptr null, ptr %47, align 8
  br label %_llgo_1
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare i32 @printf(ptr, ...)
