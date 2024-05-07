; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@main.a = global ptr null
@main.b = global ptr null
@"main.init$guard" = global ptr null
@main.n = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i64 9223372036854775807, ptr @main.a, align 4
  store i64 -9223372036854775808, ptr @main.b, align 4
  store i64 -1, ptr @main.n, align 4
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds i64, ptr %2, i64 0
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 2, ptr %4, align 4
  %5 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 3, ptr %5, align 4
  %6 = getelementptr inbounds i64, ptr %2, i64 3
  store i64 4, ptr %6, align 4
  %7 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %2, i64 8, i64 4, i64 0, i64 4, i64 4)
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  %10 = getelementptr inbounds i64, ptr %8, i64 1
  %11 = getelementptr inbounds i64, ptr %8, i64 2
  %12 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1, ptr %9, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %11, align 4
  store i64 4, ptr %12, align 4
  %13 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  call void @main.out(i64 %13)
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  store i64 1, ptr %15, align 4
  %16 = getelementptr inbounds i64, ptr %14, i64 1
  store i64 2, ptr %16, align 4
  %17 = getelementptr inbounds i64, ptr %14, i64 2
  store i64 3, ptr %17, align 4
  %18 = getelementptr inbounds i64, ptr %14, i64 3
  store i64 4, ptr %18, align 4
  %19 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %14, i64 8, i64 4, i64 0, i64 4, i64 4)
  %20 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %19)
  call void @main.out(i64 %20)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  %21 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  call void @main.out(i64 %21)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  %22 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %23 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %25 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %24, i64 8, i64 %22, i64 1, i64 %23, i64 %22)
  %26 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %25)
  call void @main.out(i64 %26)
  %27 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %28 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %30 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %29, i64 8, i64 %27, i64 1, i64 %28, i64 %27)
  %31 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %30)
  call void @main.out(i64 %31)
  %32 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %34 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %33, i64 8, i64 %32, i64 1, i64 2, i64 %32)
  %35 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %34)
  call void @main.out(i64 %35)
  %36 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %38 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %37, i64 8, i64 %36, i64 1, i64 2, i64 %36)
  %39 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %38)
  call void @main.out(i64 %39)
  %40 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %42 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %41, i64 8, i64 %40, i64 1, i64 2, i64 2)
  %43 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %42)
  call void @main.out(i64 %43)
  %44 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %46 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %45, i64 8, i64 %44, i64 1, i64 2, i64 2)
  %47 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %46)
  call void @main.out(i64 %47)
  %48 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %49 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %48)
  call void @main.out(i64 %49)
  %50 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %51 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %50)
  call void @main.out(i64 %51)
  %52 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %53 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %52)
  call void @main.out(i64 %53)
  %54 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %55 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %54)
  call void @main.out(i64 %55)
  %56 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %57 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %56)
  call void @main.out(i64 %57)
  %58 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %59 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %58)
  call void @main.out(i64 %59)
  %60 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 5)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %60)
  %61 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 5)
  %62 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %61)
  %63 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %61, i64 1, i64 %62)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %63)
  %64 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 5)
  %65 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %64, i64 1, i64 2)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %65)
  %66 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 5)
  %67 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %66)
  %68 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %66, i64 5, i64 %67)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %68)
  ret void
}

define void @main.out(i64 %0) {
_llgo_0:
  %1 = call i32 (ptr, ...) @printf(ptr @4, i64 %0)
  ret void
}

define void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %0)
  call void @main.out(i64 %1)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare i32 @printf(ptr, ...)
