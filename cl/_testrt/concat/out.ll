; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@3 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@5 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@__stderrp = external global ptr
@6 = private unnamed_addr constant [8 x i8] c"Hi, %s\0A\00", align 1

define %"github.com/goplus/llgo/internal/runtime.String" @main.concat(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 0)
  %3 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %2, 0
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi ptr [ %3, %_llgo_0 ], [ %18, %_llgo_2 ]
  %6 = phi i64 [ %4, %_llgo_0 ], [ %19, %_llgo_2 ]
  %7 = phi i64 [ -1, %_llgo_0 ], [ %12, %_llgo_2 ]
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr %5, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 %6, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = add i64 %7, 1
  %13 = icmp slt i64 %12, %1
  br i1 %13, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i64 %12
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %17 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %11, %"github.com/goplus/llgo/internal/runtime.String" %16)
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %17, 0
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %17, 1
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/internal/runtime.String" %11
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.info(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 0)
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %0)
  %3 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 3)
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %2, %"github.com/goplus/llgo/internal/runtime.String" %3)
  ret %"github.com/goplus/llgo/internal/runtime.String" %4
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

define void @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 0
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 5)
  store %"github.com/goplus/llgo/internal/runtime.String" %4, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 1
  %6 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 1)
  store %"github.com/goplus/llgo/internal/runtime.String" %6, ptr %5, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i64 2
  %8 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 5)
  store %"github.com/goplus/llgo/internal/runtime.String" %8, ptr %7, align 8
  %9 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %2, i64 16, i64 3, i64 0, i64 3, i64 3)
  %10 = call %"github.com/goplus/llgo/internal/runtime.String" @main.concat(%"github.com/goplus/llgo/internal/runtime.Slice" %9)
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %10, 1
  %13 = add i64 %12, 1
  %14 = alloca i8, i64 %13, align 1
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %14, %"github.com/goplus/llgo/internal/runtime.String" %10)
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr %11, ptr @6, ptr %15)
  ret void
}

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/internal/runtime.String")

declare i32 @fprintf(ptr, ptr, ...)
