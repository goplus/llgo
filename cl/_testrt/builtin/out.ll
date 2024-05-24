; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

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
@4 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@6 = private unnamed_addr constant [3 x i8] c"fn\00", align 1

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
  %37 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %36, i64 32, i64 %34, i64 1, i64 %35, i64 %34)
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %37, 1
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %42 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %41, i64 32, i64 %39, i64 1, i64 %40, i64 %39)
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %42, 2
  %44 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %46 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %45, i64 32, i64 %44, i64 1, i64 2, i64 %44)
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %46, 1
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %50 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %49, i64 32, i64 %48, i64 1, i64 2, i64 %48)
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %50, 2
  %52 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %53 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %54 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %53, i64 32, i64 %52, i64 1, i64 2, i64 2)
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, 1
  %56 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 2
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %11, 0
  %58 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %57, i64 32, i64 %56, i64 1, i64 2, i64 2)
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
  %77 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %75, i64 1, i64 %76)
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @1, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 5, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %81, i64 1, i64 2)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @2, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 5, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %86, 1
  %88 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %86, i64 5, i64 %87)
  %89 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %88, 1
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @3, ptr %91, align 8
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
  %106 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %11, ptr %104, i64 %105, i64 32)
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
  store ptr @4, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 3, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %119, 0
  %121 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %119, 1
  %122 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %115, ptr %120, i64 %121, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %122)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
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
  %140 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %137, ptr %138, i64 %139, i64 3)
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
  store ptr @5, ptr %153, align 8
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
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

define void @"main.main$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

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
