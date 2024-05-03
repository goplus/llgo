; ModuleID = 'main'
source_filename = "main"

%main.point = type { i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@5 = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@6 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@7 = private unnamed_addr constant [7 x i8] c"123456\00", align 1

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

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = alloca %main.point, align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 16)
  %2 = alloca [3 x %main.point], align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 48)
  %4 = getelementptr inbounds %main.point, ptr %3, i64 0
  %5 = getelementptr inbounds %main.point, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %main.point, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %main.point, ptr %3, i64 1
  %8 = getelementptr inbounds %main.point, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %main.point, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %main.point, ptr %3, i64 2
  %11 = getelementptr inbounds %main.point, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %main.point, ptr %10, i32 0, i32 1
  store i64 1, ptr %5, align 4
  store i64 2, ptr %6, align 4
  store i64 3, ptr %8, align 4
  store i64 4, ptr %9, align 4
  store i64 5, ptr %11, align 4
  store i64 6, ptr %12, align 4
  %13 = load [3 x %main.point], ptr %3, align 4
  %14 = getelementptr inbounds %main.point, ptr %3, i64 2
  %15 = load %main.point, ptr %14, align 4
  store %main.point %15, ptr %1, align 4
  %16 = getelementptr inbounds %main.point, ptr %1, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %main.point, ptr %1, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  %20 = call i32 (ptr, ...) @printf(ptr @0, i64 %17, i64 %19)
  %21 = alloca [2 x i64], align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %21, i64 16)
  %23 = alloca [2 x [2 x i64]], align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %23, i64 32)
  %25 = getelementptr inbounds [2 x i64], ptr %24, i64 0
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  %27 = getelementptr inbounds i64, ptr %25, i64 1
  %28 = getelementptr inbounds [2 x i64], ptr %24, i64 1
  %29 = getelementptr inbounds i64, ptr %28, i64 0
  %30 = getelementptr inbounds i64, ptr %28, i64 1
  store i64 1, ptr %26, align 4
  store i64 2, ptr %27, align 4
  store i64 3, ptr %29, align 4
  store i64 4, ptr %30, align 4
  %31 = load [2 x [2 x i64]], ptr %24, align 4
  %32 = getelementptr inbounds [2 x i64], ptr %24, i64 1
  %33 = load [2 x i64], ptr %32, align 4
  store [2 x i64] %33, ptr %22, align 4
  %34 = getelementptr inbounds i64, ptr %22, i64 0
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds i64, ptr %22, i64 1
  %37 = load i64, ptr %36, align 4
  %38 = call i32 (ptr, ...) @printf(ptr @1, i64 %35, i64 %37)
  %39 = alloca [5 x i64], align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %39, i64 40)
  %41 = getelementptr inbounds i64, ptr %40, i64 0
  %42 = getelementptr inbounds i64, ptr %40, i64 1
  %43 = getelementptr inbounds i64, ptr %40, i64 2
  %44 = getelementptr inbounds i64, ptr %40, i64 3
  %45 = getelementptr inbounds i64, ptr %40, i64 4
  store i64 1, ptr %41, align 4
  store i64 2, ptr %42, align 4
  store i64 3, ptr %43, align 4
  store i64 4, ptr %44, align 4
  store i64 5, ptr %45, align 4
  %46 = load [5 x i64], ptr %40, align 4
  %47 = getelementptr inbounds i64, ptr %40, i64 2
  %48 = load i64, ptr %47, align 4
  %49 = call i32 (ptr, ...) @printf(ptr @2, i64 %48)
  %50 = alloca [5 x i64], align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %50, i64 40)
  %52 = getelementptr inbounds i64, ptr %51, i64 0
  %53 = getelementptr inbounds i64, ptr %51, i64 1
  %54 = getelementptr inbounds i64, ptr %51, i64 2
  %55 = getelementptr inbounds i64, ptr %51, i64 3
  %56 = getelementptr inbounds i64, ptr %51, i64 4
  store i64 1, ptr %52, align 4
  store i64 2, ptr %53, align 4
  store i64 3, ptr %54, align 4
  store i64 4, ptr %55, align 4
  store i64 5, ptr %56, align 4
  %57 = load [5 x i64], ptr %51, align 4
  %58 = getelementptr inbounds i64, ptr %51, i64 2
  %59 = load i64, ptr %58, align 4
  %60 = call i32 (ptr, ...) @printf(ptr @3, i64 %59)
  %61 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 6)
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %61)
  %63 = getelementptr inbounds i8, ptr %62, i64 2
  %64 = load i8, ptr %63, align 1
  %65 = call i32 (ptr, ...) @printf(ptr @4, i8 %64)
  %66 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 6)
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %66)
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = load i8, ptr %68, align 1
  %70 = call i32 (ptr, ...) @printf(ptr @6, i8 %69)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare i32 @printf(ptr, ...)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String")
