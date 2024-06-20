; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
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
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %37 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %36, i64 8, i64 %34, i64 1, i64 %35, i64 %34)
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %37, 1
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
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
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %124, i32 0, i32 6
  %126 = load i8, ptr %125, align 1
  %127 = or i8 %126, 32
  store i8 %127, ptr %125, align 1
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %128, i32 0, i32 0
  store ptr %124, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %128, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %128, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %131, ptr %123, align 8
  %132 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %123, align 8
  %133 = ptrtoint ptr %123 to i64
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
  call void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface" %132)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %123)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %133)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, i32 0, i32 0
  store ptr %134, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, i32 0, i32 1
  store i64 3, ptr %138, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, i32 0, i32 2
  store i64 3, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, align 8
  %141 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %122, 0
  %142 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %122, 1
  %143 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %140, ptr %141, i64 %142, i64 1)
  store i64 %143, ptr %135, align 4
  %144 = load i64, ptr %135, align 4
  %145 = getelementptr inbounds i8, ptr %134, i64 0
  %146 = load i8, ptr %145, align 1
  %147 = getelementptr inbounds i8, ptr %134, i64 1
  %148 = load i8, ptr %147, align 1
  %149 = getelementptr inbounds i8, ptr %134, i64 2
  %150 = load i8, ptr %149, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %144)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %151 = zext i8 %146 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %151)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %152 = zext i8 %148 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %152)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %153 = zext i8 %150 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %153)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %154 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %134, i64 1, i64 3, i64 1, i64 3, i64 3)
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @2, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 4, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %158, 0
  %160 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %158, 1
  %161 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %154, ptr %159, i64 %160, i64 1)
  store i64 %161, ptr %135, align 4
  %162 = load i64, ptr %135, align 4
  %163 = getelementptr inbounds i8, ptr %134, i64 0
  %164 = load i8, ptr %163, align 1
  %165 = getelementptr inbounds i8, ptr %134, i64 1
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr inbounds i8, ptr %134, i64 2
  %168 = load i8, ptr %167, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %162)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %169 = zext i8 %164 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %169)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %170 = zext i8 %166 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %170)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %171 = zext i8 %168 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %171)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %173 = getelementptr inbounds { ptr }, ptr %172, i32 0, i32 0
  store ptr %135, ptr %173, align 8
  %174 = alloca { ptr, ptr }, align 8
  %175 = getelementptr inbounds { ptr, ptr }, ptr %174, i32 0, i32 0
  store ptr @"main.main$2", ptr %175, align 8
  %176 = getelementptr inbounds { ptr, ptr }, ptr %174, i32 0, i32 1
  store ptr %172, ptr %176, align 8
  %177 = load { ptr, ptr }, ptr %174, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @"main.main$1")
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %178 = extractvalue { ptr, ptr } %177, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %178)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 0
  store ptr @3, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 1
  store i64 7, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %179, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/internal/runtime.String" %182)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %184 = call { i1, i64, i32 } @"github.com/goplus/llgo/internal/runtime.StringIterNext"(ptr %183)
  %185 = extractvalue { i1, i64, i32 } %184, 0
  br i1 %185, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %186 = extractvalue { i1, i64, i32 } %184, 1
  %187 = extractvalue { i1, i64, i32 } %184, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %186)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %188 = sext i32 %187 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %188)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %189 = call double @main.Inf(i64 1)
  %190 = call double @main.Inf(i64 -1)
  %191 = call double @main.NaN()
  %192 = call double @main.NaN()
  %193 = call i1 @main.IsNaN(double %192)
  %194 = call i1 @main.IsNaN(double 1.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %189)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %190)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %191)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %193)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %194)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @3, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 7, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %198)
  %200 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 0
  store ptr @3, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 1
  store i64 7, ptr %202, align 4
  %203 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %200, align 8
  %204 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/internal/runtime.String" %203)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %199)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %204)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %205 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %199)
  %206 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/internal/runtime.Slice" %204)
  %207 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %199, 0
  %208 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %199, 1
  %209 = icmp sge i64 3, %208
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %209)
  %210 = getelementptr inbounds i8, ptr %207, i64 3
  %211 = load i8, ptr %210, align 1
  %212 = sext i8 %211 to i32
  %213 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32 %212)
  %214 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %204, 0
  %215 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %204, 1
  %216 = icmp sge i64 0, %215
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %216)
  %217 = getelementptr inbounds i32, ptr %214, i64 0
  %218 = load i32, ptr %217, align 4
  %219 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32 %218)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %205)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %206)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %213)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %219)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %220 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 0
  store ptr @4, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 1
  store i64 3, ptr %222, align 4
  %223 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %220, align 8
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @4, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 3, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %223, %"github.com/goplus/llgo/internal/runtime.String" %227)
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 0
  store ptr @4, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 1
  store i64 3, ptr %231, align 4
  %232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %229, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %233, i32 0, i32 0
  store ptr @5, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %233, i32 0, i32 1
  store i64 3, ptr %235, align 4
  %236 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %233, align 8
  %237 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %232, %"github.com/goplus/llgo/internal/runtime.String" %236)
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 0
  store ptr @4, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 3, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 0
  store ptr @5, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 1
  store i64 3, ptr %244, align 4
  %245 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %242, align 8
  %246 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %241, %"github.com/goplus/llgo/internal/runtime.String" %245)
  %247 = xor i1 %246, true
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr @4, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 3, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr @5, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 3, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  %256 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %251, %"github.com/goplus/llgo/internal/runtime.String" %255)
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 0
  store ptr @4, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 1
  store i64 3, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %257, align 8
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr @5, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 3, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %264, %"github.com/goplus/llgo/internal/runtime.String" %260)
  %266 = xor i1 %265, true
  %267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 0
  store ptr @4, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 1
  store i64 3, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %267, align 8
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 0
  store ptr @5, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 1
  store i64 3, ptr %273, align 4
  %274 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %271, align 8
  %275 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %274, %"github.com/goplus/llgo/internal/runtime.String" %270)
  %276 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %276, i32 0, i32 0
  store ptr @4, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %276, i32 0, i32 1
  store i64 3, ptr %278, align 4
  %279 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %276, align 8
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @5, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 3, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = call i1 @"github.com/goplus/llgo/internal/runtime.StringLess"(%"github.com/goplus/llgo/internal/runtime.String" %279, %"github.com/goplus/llgo/internal/runtime.String" %283)
  %285 = xor i1 %284, true
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %228)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %237)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %247)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %256)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %266)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %275)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %285)
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %3, align 1
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
