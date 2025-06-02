; ModuleID = 'github.com/goplus/llgo/cl/_testrt/builtin'
source_filename = "github.com/goplus/llgo/cl/_testrt/builtin"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/builtin.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.b" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/builtin.n" = global i64 0, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [3 x i8] c"def", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
@3 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
@4 = private unnamed_addr constant [3 x i8] c"abc", align 1
@5 = private unnamed_addr constant [3 x i8] c"abd", align 1
@6 = private unnamed_addr constant [2 x i8] c"fn", align 1

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load double, ptr %1, align 8
  ret double %2
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
  %3 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %2)
  ret double %3

_llgo_3:                                          ; preds = %_llgo_0
  br label %_llgo_2
}

define i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  ret i1 %1
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"() {
_llgo_0:
  %0 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 9221120237041090561)
  ret double %0
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.demo"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/builtin.init$after"()
  store i64 9223372036854775807, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.a", align 4
  store i64 -9223372036854775808, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.b", align 4
  store i64 -1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.n", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  %10 = getelementptr inbounds i64, ptr %8, i64 1
  %11 = getelementptr inbounds i64, ptr %8, i64 2
  %12 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1, ptr %9, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %11, align 4
  store i64 4, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 10)
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %14, ptr %13, i64 1, i64 10, i64 0, i64 4, i64 10)
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 1
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, 2
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  store i64 1, ptr %23, align 4
  %24 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 2, ptr %24, align 4
  %25 = getelementptr inbounds i64, ptr %22, i64 2
  store i64 3, ptr %25, align 4
  %26 = getelementptr inbounds i64, ptr %22, i64 3
  store i64 4, ptr %26, align 4
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 4, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 4, 2
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %34, ptr %33, i64 8, i64 %31, i64 1, i64 %32, i64 %31)
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %34, align 8
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %40, ptr %39, i64 8, i64 %37, i64 1, i64 %38, i64 %37)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %40, align 8
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %45, ptr %44, i64 8, i64 %43, i64 1, i64 2, i64 %43)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %45, align 8
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 1
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %50, ptr %49, i64 8, i64 %48, i64 1, i64 2, i64 %48)
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %50, align 8
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 2
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %55, ptr %54, i64 8, i64 %53, i64 1, i64 2, i64 2)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %55, align 8
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 1
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %60, ptr %59, i64 8, i64 %58, i64 1, i64 2, i64 2)
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %60, align 8
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %63, ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %63, align 8
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 1
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %66, ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %66, align 8
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 2
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %69, ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %69, align 8
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 1
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %72, ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %73 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %72, align 8
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, 2
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %75, ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %75, align 8
  %77 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, 1
  %78 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %78, ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %78, align 8
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %81 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %82 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %82, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %81, ptr %82, i64 1, i64 5)
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %81, align 8
  %84 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %85 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %85, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %84, ptr %85, i64 1, i64 2)
  %86 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %84, align 8
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %88, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %87, ptr %88, i64 5, i64 5)
  %89 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %87, align 8
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, 1
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %91, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %91)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %92 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %83, ptr %92, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %86, ptr %93, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %95 = getelementptr inbounds i64, ptr %94, i64 0
  store i64 5, ptr %95, align 4
  %96 = getelementptr inbounds i64, ptr %94, i64 1
  store i64 6, ptr %96, align 4
  %97 = getelementptr inbounds i64, ptr %94, i64 2
  store i64 7, ptr %97, align 4
  %98 = getelementptr inbounds i64, ptr %94, i64 3
  store i64 8, ptr %98, align 4
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %94, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 4, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 4, 2
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, 0
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, 1
  %104 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %105, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %104, ptr %105, ptr %102, i64 %103, i64 8)
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %104, align 8
  %107 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, ptr %107, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %107)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %109 = getelementptr inbounds i8, ptr %108, i64 0
  store i8 97, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %108, i64 1
  store i8 98, ptr %110, align 1
  %111 = getelementptr inbounds i8, ptr %108, i64 2
  store i8 99, ptr %111, align 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %108, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 3, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 3, 2
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %116 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, ptr %116, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %115, ptr %116, ptr @1, i64 3, i64 1)
  %117 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %115, align 8
  %118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, ptr %118, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %118)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %119, 0
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 0, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 0, 2
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %124 = getelementptr inbounds { ptr, ptr }, ptr %123, i64 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null }, ptr %124, align 8
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %123, 0
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, i64 1, 1
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, i64 1, 2
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 0
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 1
  %130 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %131 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, ptr %131, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %130, ptr %131, ptr %128, i64 %129, i64 16)
  %132 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %130, align 8
  %133 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %132, ptr %133, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %133)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %135 = load ptr, ptr @_llgo_int, align 8
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %135, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %136, ptr inttoptr (i64 100 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %137, ptr %134, align 8
  %138 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %134, align 8
  %139 = ptrtoint ptr %134 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %140 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %138, ptr %140, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(ptr %140)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %134)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %139)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %141, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 3, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i64 3, 2
  %146 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, 0
  %147 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, 1
  %148 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %145, ptr %148, align 8
  %149 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr %148, ptr %146, i64 %147, i64 1)
  store i64 %149, ptr %142, align 4
  %150 = load i64, ptr %142, align 4
  %151 = getelementptr inbounds i8, ptr %141, i64 0
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr inbounds i8, ptr %141, i64 1
  %154 = load i8, ptr %153, align 1
  %155 = getelementptr inbounds i8, ptr %141, i64 2
  %156 = load i8, ptr %155, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %157 = zext i8 %152 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %157)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %158 = zext i8 %154 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %158)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %159 = zext i8 %156 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %159)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %160 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %160, ptr %141, i64 1, i64 3, i64 1, i64 3, i64 3)
  %161 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %160, align 8
  %162 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %161, ptr %162, align 8
  %163 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr %162, ptr @2, i64 4, i64 1)
  store i64 %163, ptr %142, align 4
  %164 = load i64, ptr %142, align 4
  %165 = getelementptr inbounds i8, ptr %141, i64 0
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr inbounds i8, ptr %141, i64 1
  %168 = load i8, ptr %167, align 1
  %169 = getelementptr inbounds i8, ptr %141, i64 2
  %170 = load i8, ptr %169, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %164)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %171 = zext i8 %166 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %172 = zext i8 %168 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %172)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %173 = zext i8 %170 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %173)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %175 = getelementptr inbounds { ptr }, ptr %174, i32 0, i32 0
  store ptr %142, ptr %175, align 8
  %176 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef }, ptr %174, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %177 = extractvalue { ptr, ptr } %176, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %178 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr %178, align 8
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(ptr %178)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %180 = alloca { i1, i64, i32 }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %180, ptr %179)
  %181 = load { i1, i64, i32 }, ptr %180, align 4
  %182 = extractvalue { i1, i64, i32 } %181, 0
  br i1 %182, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %183 = extractvalue { i1, i64, i32 } %181, 1
  %184 = extractvalue { i1, i64, i32 } %181, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %183)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %185 = sext i32 %184 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %185)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %186 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  %187 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  %188 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %189 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %190 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %189)
  %191 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %187)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %188)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %190)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %191)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %192 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %193 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr %193, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr %192, ptr %193)
  %194 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %192, align 8
  %195 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %196 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 }, ptr %196, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(ptr %195, ptr %196)
  %197 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %195, align 8
  %198 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, ptr %198, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %199 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, ptr %199, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %200 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %201 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, ptr %201, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr %200, ptr %201)
  %202 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %200, align 8
  %203 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %204 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, ptr %204, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(ptr %203, ptr %204)
  %205 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %203, align 8
  %206 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, 0
  %207 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, 1
  %208 = icmp sge i64 3, %207
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %208)
  %209 = getelementptr inbounds i8, ptr %206, i64 3
  %210 = load i8, ptr %209, align 1
  %211 = sext i8 %210 to i32
  %212 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(ptr %212, i32 %211)
  %213 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %212, align 8
  %214 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, 0
  %215 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, 1
  %216 = icmp sge i64 0, %215
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %216)
  %217 = getelementptr inbounds i32, ptr %214, i64 0
  %218 = load i32, ptr %217, align 4
  %219 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(ptr %219, i32 %218)
  %220 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %219, align 8
  %221 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %202, ptr %221, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %221)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %222 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %205, ptr %222, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %222)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %223 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %213, ptr %223, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %223)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %224 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %220, ptr %224, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %224)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %225 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %225, align 8
  %226 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %226, align 8
  %227 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %225, ptr %226)
  %228 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %228, align 8
  %229 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr %229, align 8
  %230 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %228, ptr %229)
  %231 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %231, align 8
  %232 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr %232, align 8
  %233 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %231, ptr %232)
  %234 = xor i1 %233, true
  %235 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %235, align 8
  %236 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr %236, align 8
  %237 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(ptr %235, ptr %236)
  %238 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr %238, align 8
  %239 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %239, align 8
  %240 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(ptr %238, ptr %239)
  %241 = xor i1 %240, true
  %242 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr %242, align 8
  %243 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %243, align 8
  %244 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(ptr %242, ptr %243)
  %245 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr %245, align 8
  %246 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, ptr %246, align 8
  %247 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(ptr %245, ptr %246)
  %248 = xor i1 %247, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %227)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %230)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %234)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %237)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %241)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %244)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %248)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$2"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr %0, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr, ptr, ptr, i64, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr, ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(ptr, i32)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(ptr, ptr)
