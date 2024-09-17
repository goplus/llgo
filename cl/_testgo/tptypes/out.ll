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
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds %"main.Data[int]", ptr %2, i32 0, i32 0
  store i64 1, ptr %3, align 4
  %4 = load %"main.Data[int]", ptr %2, align 4
  %5 = extractvalue %"main.Data[int]" %4, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = alloca %"main.Data[string]", align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %"main.Data[string]", ptr %6, i32 0, i32 0
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr @0, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 5, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %11, ptr %7, align 8
  %12 = load %"main.Data[string]", ptr %6, align 8
  %13 = extractvalue %"main.Data[string]" %12, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %14 = alloca %"main.Data[int]", align 8
  call void @llvm.memset(ptr %14, i8 0, i64 8, i1 false)
  %15 = getelementptr inbounds %"main.Data[int]", ptr %14, i32 0, i32 0
  store i64 100, ptr %15, align 4
  %16 = load %"main.Data[int]", ptr %14, align 4
  %17 = extractvalue %"main.Data[int]" %16, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %18 = alloca %"main.Data[string]", align 8
  call void @llvm.memset(ptr %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %"main.Data[string]", ptr %18, i32 0, i32 0
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @0, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 5, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %19, align 8
  %24 = load %"main.Data[string]", ptr %18, align 8
  %25 = extractvalue %"main.Data[string]" %24, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %28 = getelementptr inbounds i64, ptr %27, i64 0
  store i64 100, ptr %28, align 4
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 0
  store ptr %27, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 1
  store i64 1, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 2
  store i64 1, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, align 8
  %34 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %26, %"github.com/goplus/llgo/internal/runtime.Slice" %33)
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i64 0
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @0, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 5, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %37, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %36, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 1, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]string,string]).Append"(ptr %35, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %50 = getelementptr inbounds i64, ptr %49, i64 0
  store i64 1, ptr %50, align 4
  %51 = getelementptr inbounds i64, ptr %49, i64 1
  store i64 2, ptr %51, align 4
  %52 = getelementptr inbounds i64, ptr %49, i64 2
  store i64 3, ptr %52, align 4
  %53 = getelementptr inbounds i64, ptr %49, i64 3
  store i64 4, ptr %53, align 4
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 0
  store ptr %49, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 1
  store i64 4, ptr %56, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 2
  store i64 4, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, align 8
  %59 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %48, %"github.com/goplus/llgo/internal/runtime.Slice" %58)
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %61 = getelementptr inbounds i64, ptr %60, i64 0
  store i64 1, ptr %61, align 4
  %62 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 2, ptr %62, align 4
  %63 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 3, ptr %63, align 4
  %64 = getelementptr inbounds i64, ptr %60, i64 3
  store i64 4, ptr %64, align 4
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 0
  store ptr %60, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 1
  store i64 4, ptr %67, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 2
  store i64 4, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, align 8
  %70 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append2"(ptr %48, %"github.com/goplus/llgo/internal/runtime.Slice" %69)
  %71 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %26, i32 0, i32 0
  %72 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, align 8
  %73 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %26, i32 0, i32 0
  %74 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, align 8
  %75 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %74, 0
  %76 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %74, 1
  %77 = icmp sge i64 0, %76
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %77)
  %78 = getelementptr inbounds i64, ptr %75, i64 0
  %79 = load i64, ptr %78, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %72)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %79)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %80 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %35, i32 0, i32 0
  %81 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, align 8
  %82 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %35, i32 0, i32 0
  %83 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, align 8
  %84 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %83, 0
  %85 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %83, 1
  %86 = icmp sge i64 0, %85
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %86)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i64 0
  %88 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %87, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %81)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %88)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %89 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %48, i32 0, i32 0
  %90 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, align 8
  %91 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %48, i32 0, i32 0
  %92 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, align 8
  %93 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %92, 0
  %94 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %92, 1
  %95 = icmp sge i64 0, %94
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %95)
  %96 = getelementptr inbounds i64, ptr %93, i64 0
  %97 = load i64, ptr %96, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %90)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %97)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
