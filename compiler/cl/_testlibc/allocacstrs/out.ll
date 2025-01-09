; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i64 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 3, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 3, 2
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 1
  %10 = add i64 %9, 1
  %11 = alloca ptr, i64 %10, align 8
  br label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_6
  %12 = phi i64 [ 0, %_llgo_6 ], [ %17, %_llgo_3 ]
  %13 = getelementptr ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1
  %16 = call i32 (ptr, ...) @printf(ptr @3, ptr %14)
  %17 = add i64 %12, 1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_0
  %18 = phi i64 [ 0, %_llgo_0 ], [ %32, %_llgo_5 ]
  %19 = icmp slt i64 %18, %9
  br i1 %19, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 0
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 1
  %22 = icmp slt i64 %18, 0
  %23 = icmp sge i64 %18, %21
  %24 = or i1 %23, %22
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %24)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %20, i64 %18
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  %27 = getelementptr ptr, ptr %11, i64 %18
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, 1
  %29 = add i64 %28, 1
  %30 = alloca i8, i64 %29, align 1
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.String" %26)
  store ptr %31, ptr %27, align 8
  %32 = add i64 %18, 1
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %33 = getelementptr ptr, ptr %11, i64 %9
  store ptr null, ptr %33, align 8
  br label %_llgo_1
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i32 @printf(ptr, ...)
