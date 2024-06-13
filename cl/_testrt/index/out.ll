; ModuleID = 'main'
source_filename = "main"

%main.point = type { i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"123456", align 1
@6 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

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
  %2 = alloca %main.point, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  %4 = alloca [3 x %main.point], align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %4, i64 48)
  %6 = getelementptr inbounds %main.point, ptr %5, i64 0
  %7 = getelementptr inbounds %main.point, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %main.point, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %main.point, ptr %5, i64 1
  %10 = getelementptr inbounds %main.point, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %main.point, ptr %9, i32 0, i32 1
  %12 = getelementptr inbounds %main.point, ptr %5, i64 2
  %13 = getelementptr inbounds %main.point, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %main.point, ptr %12, i32 0, i32 1
  store i64 1, ptr %7, align 4
  store i64 2, ptr %8, align 4
  store i64 3, ptr %10, align 4
  store i64 4, ptr %11, align 4
  store i64 5, ptr %13, align 4
  store i64 6, ptr %14, align 4
  %15 = load [3 x %main.point], ptr %5, align 4
  %16 = getelementptr inbounds %main.point, ptr %5, i64 2
  %17 = load %main.point, ptr %16, align 4
  store %main.point %17, ptr %3, align 4
  %18 = getelementptr inbounds %main.point, ptr %3, i32 0, i32 0
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds %main.point, ptr %3, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr @0, i64 %19, i64 %21)
  %23 = alloca [2 x i64], align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %23, i64 16)
  %25 = alloca [2 x [2 x i64]], align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %25, i64 32)
  %27 = getelementptr inbounds [2 x i64], ptr %26, i64 0
  %28 = getelementptr inbounds i64, ptr %27, i64 0
  %29 = getelementptr inbounds i64, ptr %27, i64 1
  %30 = getelementptr inbounds [2 x i64], ptr %26, i64 1
  %31 = getelementptr inbounds i64, ptr %30, i64 0
  %32 = getelementptr inbounds i64, ptr %30, i64 1
  store i64 1, ptr %28, align 4
  store i64 2, ptr %29, align 4
  store i64 3, ptr %31, align 4
  store i64 4, ptr %32, align 4
  %33 = load [2 x [2 x i64]], ptr %26, align 4
  %34 = getelementptr inbounds [2 x i64], ptr %26, i64 1
  %35 = load [2 x i64], ptr %34, align 4
  store [2 x i64] %35, ptr %24, align 4
  %36 = getelementptr inbounds i64, ptr %24, i64 0
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds i64, ptr %24, i64 1
  %39 = load i64, ptr %38, align 4
  %40 = call i32 (ptr, ...) @printf(ptr @1, i64 %37, i64 %39)
  %41 = alloca [5 x i64], align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %41, i64 40)
  %43 = getelementptr inbounds i64, ptr %42, i64 0
  %44 = getelementptr inbounds i64, ptr %42, i64 1
  %45 = getelementptr inbounds i64, ptr %42, i64 2
  %46 = getelementptr inbounds i64, ptr %42, i64 3
  %47 = getelementptr inbounds i64, ptr %42, i64 4
  store i64 1, ptr %43, align 4
  store i64 2, ptr %44, align 4
  store i64 3, ptr %45, align 4
  store i64 4, ptr %46, align 4
  store i64 5, ptr %47, align 4
  %48 = load [5 x i64], ptr %42, align 4
  %49 = getelementptr inbounds i64, ptr %42, i64 2
  %50 = load i64, ptr %49, align 4
  %51 = call i32 (ptr, ...) @printf(ptr @2, i64 %50)
  %52 = alloca [5 x i64], align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %52, i64 40)
  %54 = getelementptr inbounds i64, ptr %53, i64 0
  %55 = getelementptr inbounds i64, ptr %53, i64 1
  %56 = getelementptr inbounds i64, ptr %53, i64 2
  %57 = getelementptr inbounds i64, ptr %53, i64 3
  %58 = getelementptr inbounds i64, ptr %53, i64 4
  store i64 1, ptr %54, align 4
  store i64 2, ptr %55, align 4
  store i64 3, ptr %56, align 4
  store i64 4, ptr %57, align 4
  store i64 5, ptr %58, align 4
  %59 = load [5 x i64], ptr %53, align 4
  %60 = getelementptr inbounds i64, ptr %53, i64 2
  %61 = load i64, ptr %60, align 4
  %62 = call i32 (ptr, ...) @printf(ptr @3, i64 %61)
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @5, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 6, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %66, 0
  %68 = getelementptr inbounds i8, ptr %67, i64 2
  %69 = load i8, ptr %68, align 1
  %70 = call i32 (ptr, ...) @printf(ptr @4, i8 %69)
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr @5, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 6, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  %75 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %74, 0
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load i8, ptr %76, align 1
  %78 = call i32 (ptr, ...) @printf(ptr @6, i8 %77)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare i32 @printf(ptr, ...)
