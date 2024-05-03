; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@main.a = global ptr null
@main.b = global ptr null
@"main.init$guard" = global ptr null
@main.n = global ptr null
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

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %0, i64 8, i64 4, i64 0, i64 4, i64 4)
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = getelementptr inbounds i64, ptr %6, i64 1
  %9 = getelementptr inbounds i64, ptr %6, i64 2
  %10 = getelementptr inbounds i64, ptr %6, i64 3
  store i64 1, ptr %7, align 4
  store i64 2, ptr %8, align 4
  store i64 3, ptr %9, align 4
  store i64 4, ptr %10, align 4
  %11 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  call void @main.out(i64 %11)
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  store i64 1, ptr %13, align 4
  %14 = getelementptr inbounds i64, ptr %12, i64 1
  store i64 2, ptr %14, align 4
  %15 = getelementptr inbounds i64, ptr %12, i64 2
  store i64 3, ptr %15, align 4
  %16 = getelementptr inbounds i64, ptr %12, i64 3
  store i64 4, ptr %16, align 4
  %17 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 0, i64 4, i64 4)
  %18 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %17)
  call void @main.out(i64 %18)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  %19 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  call void @main.out(i64 %19)
  call void @main.out(i64 4)
  call void @main.out(i64 4)
  %20 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %21 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %23 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %22, i64 8, i64 %20, i64 1, i64 %21, i64 %20)
  %24 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %23)
  call void @main.out(i64 %24)
  %25 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %26 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %28 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %27, i64 8, i64 %25, i64 1, i64 %26, i64 %25)
  %29 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %28)
  call void @main.out(i64 %29)
  %30 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %32 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %31, i64 8, i64 %30, i64 1, i64 2, i64 %30)
  %33 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %32)
  call void @main.out(i64 %33)
  %34 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %36 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %35, i64 8, i64 %34, i64 1, i64 2, i64 %34)
  %37 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %36)
  call void @main.out(i64 %37)
  %38 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %40 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %39, i64 8, i64 %38, i64 1, i64 2, i64 2)
  %41 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %40)
  call void @main.out(i64 %41)
  %42 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %5)
  %44 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %42, i64 1, i64 2, i64 2)
  %45 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %44)
  call void @main.out(i64 %45)
  %46 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %6, i64 8, i64 4, i64 1, i64 4, i64 4)
  %47 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %46)
  call void @main.out(i64 %47)
  %48 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %6, i64 8, i64 4, i64 1, i64 4, i64 4)
  %49 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %48)
  call void @main.out(i64 %49)
  %50 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %6, i64 8, i64 4, i64 1, i64 2, i64 4)
  %51 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %50)
  call void @main.out(i64 %51)
  %52 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %6, i64 8, i64 4, i64 1, i64 2, i64 4)
  %53 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %52)
  call void @main.out(i64 %53)
  %54 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %6, i64 8, i64 4, i64 1, i64 2, i64 2)
  %55 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %54)
  call void @main.out(i64 %55)
  %56 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %6, i64 8, i64 4, i64 1, i64 2, i64 2)
  %57 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCap"(%"github.com/goplus/llgo/internal/runtime.Slice" %56)
  call void @main.out(i64 %57)
  %58 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 5)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %58)
  %59 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 5)
  %60 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %59)
  %61 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %59, i64 1, i64 %60)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %61)
  %62 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 5)
  %63 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %62, i64 1, i64 2)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %63)
  %64 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 5)
  %65 = call i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.String" %64)
  %66 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %64, i64 5, i64 %65)
  call void @main.string_len(%"github.com/goplus/llgo/internal/runtime.String" %66)
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
