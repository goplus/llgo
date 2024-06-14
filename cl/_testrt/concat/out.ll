; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"...", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@1 = private unnamed_addr constant [5 x i8] c"Hello", align 1
@2 = private unnamed_addr constant [1 x i8] c" ", align 1
@3 = private unnamed_addr constant [5 x i8] c"World", align 1

define %"github.com/goplus/llgo/internal/runtime.String" @main.concat(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %6 = phi %"github.com/goplus/llgo/internal/runtime.String" [ %5, %_llgo_0 ], [ %14, %_llgo_2 ]
  %7 = phi i64 [ -1, %_llgo_0 ], [ %8, %_llgo_2 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %1
  br i1 %9, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %10 = icmp slt i64 %8, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i64 %8
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %14 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %6, %"github.com/goplus/llgo/internal/runtime.String" %13)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/internal/runtime.String" %6
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.info(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %4, %"github.com/goplus/llgo/internal/runtime.String" %0)
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @0, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 3, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  %10 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %5, %"github.com/goplus/llgo/internal/runtime.String" %9)
  ret %"github.com/goplus/llgo/internal/runtime.String" %10
}

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
  store ptr @1, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %3, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 1
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @2, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 1, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %12, ptr %8, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 2
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @3, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 5, ptr %16, align 4
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
  %23 = call %"github.com/goplus/llgo/internal/runtime.String" @main.concat(%"github.com/goplus/llgo/internal/runtime.Slice" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
