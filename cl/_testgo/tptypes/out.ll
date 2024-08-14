; ModuleID = 'main'
source_filename = "main"

%"main.Data[int]" = type { i64 }
%"main.Data[string]" = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"main.Slice[[]int,int]" = type { %"github.com/goplus/llgo/internal/runtime.Slice" }
%"main.Slice[[]string,string]" = type { %"github.com/goplus/llgo/internal/runtime.Slice" }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1

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
  %2 = alloca %"main.Data[int]", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 8)
  %4 = getelementptr inbounds %"main.Data[int]", ptr %3, i32 0, i32 0
  store i64 1, ptr %4, align 4
  %5 = load %"main.Data[int]", ptr %3, align 4
  %6 = extractvalue %"main.Data[int]" %5, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %7 = alloca %"main.Data[string]", align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %7, i64 16)
  %9 = getelementptr inbounds %"main.Data[string]", ptr %8, i32 0, i32 0
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @0, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 5, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %13, ptr %9, align 8
  %14 = load %"main.Data[string]", ptr %8, align 8
  %15 = extractvalue %"main.Data[string]" %14, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %16 = alloca %"main.Data[int]", align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %16, i64 8)
  %18 = getelementptr inbounds %"main.Data[int]", ptr %17, i32 0, i32 0
  store i64 100, ptr %18, align 4
  %19 = load %"main.Data[int]", ptr %17, align 4
  %20 = extractvalue %"main.Data[int]" %19, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %21 = alloca %"main.Data[string]", align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %21, i64 16)
  %23 = getelementptr inbounds %"main.Data[string]", ptr %22, i32 0, i32 0
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @0, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 5, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %27, ptr %23, align 8
  %28 = load %"main.Data[string]", ptr %22, align 8
  %29 = extractvalue %"main.Data[string]" %28, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %32 = getelementptr inbounds i64, ptr %31, i64 0
  store i64 100, ptr %32, align 4
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, i32 0, i32 0
  store ptr %31, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, i32 0, i32 1
  store i64 1, ptr %35, align 4
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, i32 0, i32 2
  store i64 1, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, align 8
  %38 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %30, %"github.com/goplus/llgo/internal/runtime.Slice" %37)
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i64 0
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr @0, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 5, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %45, ptr %41, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 0
  store ptr %40, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 1
  store i64 1, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 2
  store i64 1, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, align 8
  %51 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]string,string]).Append"(ptr %39, %"github.com/goplus/llgo/internal/runtime.Slice" %50)
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %54 = getelementptr inbounds i64, ptr %53, i64 0
  store i64 1, ptr %54, align 4
  %55 = getelementptr inbounds i64, ptr %53, i64 1
  store i64 2, ptr %55, align 4
  %56 = getelementptr inbounds i64, ptr %53, i64 2
  store i64 3, ptr %56, align 4
  %57 = getelementptr inbounds i64, ptr %53, i64 3
  store i64 4, ptr %57, align 4
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %58, i32 0, i32 0
  store ptr %53, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %58, i32 0, i32 1
  store i64 4, ptr %60, align 4
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %58, i32 0, i32 2
  store i64 4, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %58, align 8
  %63 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %52, %"github.com/goplus/llgo/internal/runtime.Slice" %62)
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %65 = getelementptr inbounds i64, ptr %64, i64 0
  store i64 1, ptr %65, align 4
  %66 = getelementptr inbounds i64, ptr %64, i64 1
  store i64 2, ptr %66, align 4
  %67 = getelementptr inbounds i64, ptr %64, i64 2
  store i64 3, ptr %67, align 4
  %68 = getelementptr inbounds i64, ptr %64, i64 3
  store i64 4, ptr %68, align 4
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 0
  store ptr %64, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 1
  store i64 4, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 2
  store i64 4, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, align 8
  %74 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append2"(ptr %52, %"github.com/goplus/llgo/internal/runtime.Slice" %73)
  %75 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %30, i32 0, i32 0
  %76 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, align 8
  %77 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %30, i32 0, i32 0
  %78 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, align 8
  %79 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %78, 0
  %80 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %78, 1
  %81 = icmp sge i64 0, %80
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %81)
  %82 = getelementptr inbounds i64, ptr %79, i64 0
  %83 = load i64, ptr %82, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %76)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %83)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %84 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %39, i32 0, i32 0
  %85 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, align 8
  %86 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %39, i32 0, i32 0
  %87 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, align 8
  %88 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %87, 0
  %89 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %87, 1
  %90 = icmp sge i64 0, %89
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %90)
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i64 0
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %91, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %85)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %92)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %93 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %52, i32 0, i32 0
  %94 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, align 8
  %95 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %52, i32 0, i32 0
  %96 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, align 8
  %97 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %96, 0
  %98 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %96, 1
  %99 = icmp sge i64 0, %98
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %99)
  %100 = getelementptr inbounds i64, ptr %97, i64 0
  %101 = load i64, ptr %100, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %94)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %101)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define linkonce %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 8)
  %7 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %9
}

define linkonce %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]string,string]).Append"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 16)
  %7 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %9
}

define linkonce %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append2"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 8)
  %7 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %9
}

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)
