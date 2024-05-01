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
  %1 = alloca [3 x %main.point], align 8
  %2 = getelementptr inbounds %main.point, ptr %1, i64 0
  %3 = getelementptr inbounds %main.point, ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %main.point, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %main.point, ptr %1, i64 1
  %6 = getelementptr inbounds %main.point, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %main.point, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %main.point, ptr %1, i64 2
  %9 = getelementptr inbounds %main.point, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %main.point, ptr %8, i32 0, i32 1
  store i64 1, ptr %3, align 4
  store i64 2, ptr %4, align 4
  store i64 3, ptr %6, align 4
  store i64 4, ptr %7, align 4
  store i64 5, ptr %9, align 4
  store i64 6, ptr %10, align 4
  %11 = load [3 x %main.point], ptr %1, align 4
  %12 = getelementptr inbounds %main.point, ptr %1, i64 2
  %13 = load %main.point, ptr %12, align 4
  store %main.point %13, ptr %0, align 4
  %14 = getelementptr inbounds %main.point, ptr %0, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %main.point, ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr @0, i64 %15, i64 %17)
  %19 = alloca [2 x i64], align 8
  %20 = alloca [2 x [2 x i64]], align 8
  %21 = getelementptr inbounds [2 x i64], ptr %20, i64 0
  %22 = getelementptr inbounds i64, ptr %21, i64 0
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = getelementptr inbounds [2 x i64], ptr %20, i64 1
  %25 = getelementptr inbounds i64, ptr %24, i64 0
  %26 = getelementptr inbounds i64, ptr %24, i64 1
  store i64 1, ptr %22, align 4
  store i64 2, ptr %23, align 4
  store i64 3, ptr %25, align 4
  store i64 4, ptr %26, align 4
  %27 = load [2 x [2 x i64]], ptr %20, align 4
  %28 = getelementptr inbounds [2 x i64], ptr %20, i64 1
  %29 = load [2 x i64], ptr %28, align 4
  store [2 x i64] %29, ptr %19, align 4
  %30 = getelementptr inbounds i64, ptr %19, i64 0
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds i64, ptr %19, i64 1
  %33 = load i64, ptr %32, align 4
  %34 = call i32 (ptr, ...) @printf(ptr @1, i64 %31, i64 %33)
  %35 = alloca [5 x i64], align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 0
  %37 = getelementptr inbounds i64, ptr %35, i64 1
  %38 = getelementptr inbounds i64, ptr %35, i64 2
  %39 = getelementptr inbounds i64, ptr %35, i64 3
  %40 = getelementptr inbounds i64, ptr %35, i64 4
  store i64 1, ptr %36, align 4
  store i64 2, ptr %37, align 4
  store i64 3, ptr %38, align 4
  store i64 4, ptr %39, align 4
  store i64 5, ptr %40, align 4
  %41 = load [5 x i64], ptr %35, align 4
  %42 = getelementptr inbounds i64, ptr %35, i64 2
  %43 = load i64, ptr %42, align 4
  %44 = call i32 (ptr, ...) @printf(ptr @2, i64 %43)
  %45 = alloca [5 x i64], align 8
  %46 = getelementptr inbounds i64, ptr %45, i64 0
  %47 = getelementptr inbounds i64, ptr %45, i64 1
  %48 = getelementptr inbounds i64, ptr %45, i64 2
  %49 = getelementptr inbounds i64, ptr %45, i64 3
  %50 = getelementptr inbounds i64, ptr %45, i64 4
  store i64 1, ptr %46, align 4
  store i64 2, ptr %47, align 4
  store i64 3, ptr %48, align 4
  store i64 4, ptr %49, align 4
  store i64 5, ptr %50, align 4
  %51 = load [5 x i64], ptr %45, align 4
  %52 = getelementptr inbounds i64, ptr %45, i64 2
  %53 = load i64, ptr %52, align 4
  %54 = call i32 (ptr, ...) @printf(ptr @3, i64 %53)
  %55 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 6)
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %55)
  %57 = getelementptr inbounds i8, ptr %56, i64 2
  %58 = load i8, ptr %57, align 1
  %59 = call i32 (ptr, ...) @printf(ptr @4, i8 %58)
  %60 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 6)
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %60)
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1
  %64 = call i32 (ptr, ...) @printf(ptr @6, i8 %63)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare i32 @printf(ptr, ...)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String")
