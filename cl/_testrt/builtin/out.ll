; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

@main.a = global i64 0, align 8
@main.b = global i64 0, align 8
@"main.init$guard" = global i1 false, align 1
@main.n = global i64 0, align 8
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [3 x i8] c"def", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
@3 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
@4 = private unnamed_addr constant [3 x i8] c"abc", align 1
@5 = private unnamed_addr constant [3 x i8] c"abd", align 1
@6 = private unnamed_addr constant [2 x i8] c"fn", align 1

define double @main.Float64frombits(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load double, ptr %1, align 8
  ret double %2
}

define double @main.Inf(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
  %3 = call double @main.Float64frombits(i64 %2)
  ret double %3

_llgo_3:                                          ; preds = %_llgo_0
  br label %_llgo_2
}

define i1 @main.IsNaN(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  ret i1 %1
}

define double @main.NaN() {
_llgo_0:
  %0 = call double @main.Float64frombits(i64 9221120237041090561)
  ret double %0
}

define void @main.demo() {
_llgo_0:
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  store i64 9223372036854775807, ptr @main.a, align 4
  store i64 -9223372036854775808, ptr @main.b, align 4
  store i64 -1, ptr @main.n, align 4
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds i64, ptr %2, i64 0
  store i64 1, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 2, ptr %4, align 4
  %5 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 3, ptr %5, align 4
  %6 = getelementptr inbounds i64, ptr %2, i64 3
  store i64 4, ptr %6, align 4
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 0
  store ptr %2, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 1
  store i64 4, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 2
  store i64 4, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  %14 = getelementptr inbounds i64, ptr %12, i64 1
  %15 = getelementptr inbounds i64, ptr %12, i64 2
  %16 = getelementptr inbounds i64, ptr %12, i64 3
  store i64 1, ptr %13, align 4
  store i64 2, ptr %14, align 4
  store i64 3, ptr %15, align 4
  store i64 4, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 10)
  %18 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %17, i64 1, i64 10, i64 0, i64 4, i64 10)
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 1
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %21 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %18, 1
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %18, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %24 = getelementptr inbounds i64, ptr %23, i64 0
  store i64 1, ptr %24, align 4
  %25 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 2, ptr %25, align 4
  %26 = getelementptr inbounds i64, ptr %23, i64 2
  store i64 3, ptr %26, align 4
  %27 = getelementptr inbounds i64, ptr %23, i64 3
  store i64 4, ptr %27, align 4
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, i32 0, i32 0
  store ptr %23, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, i32 0, i32 1
  store i64 4, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, i32 0, i32 2
  store i64 4, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, align 8
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %32, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 1
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %37 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %36, i64 8, i64 %34, i64 1, i64 %35, i64 %34)
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %37, 1
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 1
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %42 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %41, i64 8, i64 %39, i64 1, i64 %40, i64 %39)
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %42, 2
  %44 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %46 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %45, i64 8, i64 %44, i64 1, i64 2, i64 %44)
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %46, 1
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %50 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %49, i64 8, i64 %48, i64 1, i64 2, i64 %48)
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %50, 2
  %52 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %53 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %54 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %53, i64 8, i64 %52, i64 1, i64 2, i64 2)
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, 1
  %56 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %58 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %57, i64 8, i64 %56, i64 1, i64 2, i64 2)
  %59 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %58, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %60 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 4, i64 4)
  %61 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %60, 1
  %62 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 4, i64 4)
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %62, 2
  %64 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 4)
  %65 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %64, 1
  %66 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 4)
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %66, 2
  %68 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 2)
  %69 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %68, 1
  %70 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 2)
  %71 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %70, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @0, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 5, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %75, 1
  %77 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %75, i64 1, i64 %76)
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @0, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 5, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %81, i64 1, i64 2)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @0, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 5, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %86, 1
  %88 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %86, i64 5, i64 %87)
  %89 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %88, 1
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @0, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 5, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %93)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %82)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %89)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 5, ptr %95, align 4
  %96 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 6, ptr %96, align 4
  %97 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 7, ptr %97, align 4
  %98 = getelementptr inbounds i64, ptr %94, i64 3
  store i64 8, ptr %98, align 4
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 0
  store ptr %94, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 1
  store i64 4, ptr %101, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 2
  store i64 4, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, align 8
  %104 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %103, 0
  %105 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %103, 1
  %106 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %11, ptr %104, i64 %105, i64 8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %106)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %108 = getelementptr inbounds i8, ptr %107, i64 0
  store i8 97, ptr %108, align 1
  %109 = getelementptr inbounds i8, ptr %107, i64 1
  store i8 98, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %107, i64 2
  store i8 99, ptr %110, align 1
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 0
  store ptr %107, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 1
  store i64 3, ptr %113, align 4
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, i32 0, i32 2
  store i64 3, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %111, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @1, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 3, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %119, 0
  %121 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %119, 1
  %122 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %115, ptr %120, i64 %121, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %122)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %124 = load ptr, ptr @_llgo_int, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, i32 0, i32 0
  store ptr %124, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %127, align 8
  %128 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %128, ptr %123, align 8
  %129 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %123, align 8
  %130 = ptrtoint ptr %123 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface" %129)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %123)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %130)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 0
  store ptr %131, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 1
  store i64 3, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 2
  store i64 3, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, align 8
  %138 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %122, 0
  %139 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %122, 1
  %140 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %137, ptr %138, i64 %139, i64 1)
  store i64 %140, ptr %132, align 4
  %141 = load i64, ptr %132, align 4
  %142 = getelementptr inbounds i8, ptr %131, i64 0
  %143 = load i8, ptr %142, align 1
  %144 = getelementptr inbounds i8, ptr %131, i64 1
  %145 = load i8, ptr %144, align 1
  %146 = getelementptr inbounds i8, ptr %131, i64 2
  %147 = load i8, ptr %146, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %141)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %148 = zext i8 %143 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %148)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %149 = zext i8 %145 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %149)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %150 = zext i8 %147 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %150)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %151 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %131, i64 1, i64 3, i64 1, i64 3, i64 3)
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @2, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 4, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %155, 0
  %157 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %155, 1
  %158 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %151, ptr %156, i64 %157, i64 1)
  store i64 %158, ptr %132, align 4
  %159 = load i64, ptr %132, align 4
  %160 = getelementptr inbounds i8, ptr %131, i64 0
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr inbounds i8, ptr %131, i64 1
  %163 = load i8, ptr %162, align 1
  %164 = getelementptr inbounds i8, ptr %131, i64 2
  %165 = load i8, ptr %164, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %159)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %166 = zext i8 %161 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %166)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %167 = zext i8 %163 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %167)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %168 = zext i8 %165 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %168)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %169 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %170 = getelementptr inbounds { ptr }, ptr %169, i32 0, i32 0
  store ptr %132, ptr %170, align 8
  %171 = alloca { ptr, ptr }, align 8
  %172 = getelementptr inbounds { ptr, ptr }, ptr %171, i32 0, i32 0
  store ptr @"main.main$2", ptr %172, align 8
  %173 = getelementptr inbounds { ptr, ptr }, ptr %171, i32 0, i32 1
  store ptr %169, ptr %173, align 8
  %174 = load { ptr, ptr }, ptr %171, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @"main.main$1")
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %175 = extractvalue { ptr, ptr } %174, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %175)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr @3, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 7, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/internal/runtime.String" %179)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %181 = call { i1, i64, i32 } @"github.com/goplus/llgo/internal/runtime.StringIterNext"(ptr %180)
  %182 = extractvalue { i1, i64, i32 } %181, 0
  br i1 %182, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %183 = extractvalue { i1, i64, i32 } %181, 1
  %184 = extractvalue { i1, i64, i32 } %181, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %183)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %185 = sext i32 %184 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %185)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %186 = call double @main.Inf(i64 1)
  %187 = call double @main.Inf(i64 -1)
  %188 = call double @main.NaN()
  %189 = call double @main.NaN()
  %190 = call i1 @main.IsNaN(double %189)
  %191 = call i1 @main.IsNaN(double 1.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %186)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %187)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %188)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %190)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %191)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 0
  store ptr @3, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 1
  store i64 7, ptr %194, align 4
  %195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %192, align 8
  %196 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %195)
  %197 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %197, i32 0, i32 0
  store ptr @3, ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %197, i32 0, i32 1
  store i64 7, ptr %199, align 4
  %200 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %197, align 8
  %201 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/internal/runtime.String" %200)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %196)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %201)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %202 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %196)
  %203 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/internal/runtime.Slice" %201)
  %204 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %196, 0
  %205 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %196, 1
  %206 = icmp sge i64 3, %205
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %206)
  %207 = getelementptr inbounds i8, ptr %204, i64 3
  %208 = load i8, ptr %207, align 1
  %209 = sext i8 %208 to i32
  %210 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32 %209)
  %211 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %201, 0
  %212 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %201, 1
  %213 = icmp sge i64 0, %212
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %213)
  %214 = getelementptr inbounds i32, ptr %211, i64 0
  %215 = load i32, ptr %214, align 4
  %216 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32 %215)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %202)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %203)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %210)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %216)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr @4, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 3, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @4, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 3, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %220, %"github.com/goplus/llgo/internal/runtime.String" %224)
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @4, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 3, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 0
  store ptr @5, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 1
  store i64 3, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %230, align 8
  %234 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %229, %"github.com/goplus/llgo/internal/runtime.String" %233)
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @4, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 3, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 0
  store ptr @5, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 1
  store i64 3, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %239, align 8
  %243 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %238, %"github.com/goplus/llgo/internal/runtime.String" %242)
  %244 = xor i1 %243, true
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 0
  store ptr @4, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 1
  store i64 3, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %245, align 8
  %249 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %249, i32 0, i32 0
  store ptr @5, ptr %250, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %249, i32 0, i32 1
  store i64 3, ptr %251, align 4
  %252 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %249, align 8
  %253 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %248, %"github.com/goplus/llgo/internal/runtime.String" %252)
  %254 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %254, i32 0, i32 0
  store ptr @4, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %254, i32 0, i32 1
  store i64 3, ptr %256, align 4
  %257 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %254, align 8
  %258 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %258, i32 0, i32 0
  store ptr @5, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %258, i32 0, i32 1
  store i64 3, ptr %260, align 4
  %261 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %258, align 8
  %262 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %261, %"github.com/goplus/llgo/internal/runtime.String" %257)
  %263 = xor i1 %262, true
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 0
  store ptr @4, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 1
  store i64 3, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %264, align 8
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @5, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 3, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %271, %"github.com/goplus/llgo/internal/runtime.String" %267)
  %273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 0
  store ptr @4, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 1
  store i64 3, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %273, align 8
  %277 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %277, i32 0, i32 0
  store ptr @5, ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %277, i32 0, i32 1
  store i64 3, ptr %279, align 4
  %280 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %277, align 8
  %281 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %276, %"github.com/goplus/llgo/internal/runtime.String" %280)
  %282 = xor i1 %281, true
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %225)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %234)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %244)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %253)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %263)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %272)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %282)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define void @"main.main$1"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @6, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 2, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.main$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/internal/runtime.String")

declare { i1, i64, i32 } @"github.com/goplus/llgo/internal/runtime.StringIterNext"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32)

declare i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")
