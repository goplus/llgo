; ModuleID = 'main'
source_filename = "main"

%"main.Data[int]" = type { i64 }
%"main.Data[string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"main.Slice[[]int,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"main.Slice[[]string,string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = alloca %"main.Data[int]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds %"main.Data[int]", ptr %2, i32 0, i32 0
  store i64 1, ptr %3, align 4
  %4 = load %"main.Data[int]", ptr %2, align 4
  %5 = extractvalue %"main.Data[int]" %4, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = alloca %"main.Data[string]", align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %"main.Data[string]", ptr %6, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %7, align 8
  %8 = load %"main.Data[string]", ptr %6, align 8
  %9 = extractvalue %"main.Data[string]" %8, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = alloca %"main.Data[int]", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = getelementptr inbounds %"main.Data[int]", ptr %10, i32 0, i32 0
  store i64 100, ptr %11, align 4
  %12 = load %"main.Data[int]", ptr %10, align 4
  %13 = extractvalue %"main.Data[int]" %12, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = alloca %"main.Data[string]", align 8
  call void @llvm.memset(ptr %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %"main.Data[string]", ptr %14, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %15, align 8
  %16 = load %"main.Data[string]", ptr %14, align 8
  %17 = extractvalue %"main.Data[string]" %16, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 100, ptr %20, align 4
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 2
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %18, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %26, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]string,string]).Append"(ptr %25, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %34 = getelementptr inbounds i64, ptr %33, i64 0
  store i64 1, ptr %34, align 4
  %35 = getelementptr inbounds i64, ptr %33, i64 1
  store i64 2, ptr %35, align 4
  %36 = getelementptr inbounds i64, ptr %33, i64 2
  store i64 3, ptr %36, align 4
  %37 = getelementptr inbounds i64, ptr %33, i64 3
  store i64 4, ptr %37, align 4
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 4, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 4, 2
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %43 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 1, ptr %43, align 4
  %44 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 2, ptr %44, align 4
  %45 = getelementptr inbounds i64, ptr %42, i64 2
  store i64 3, ptr %45, align 4
  %46 = getelementptr inbounds i64, ptr %42, i64 3
  store i64 4, ptr %46, align 4
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %42, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 4, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 4, 2
  %50 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append2"(ptr %32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49)
  %51 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %18, i32 0, i32 0
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %51, align 8
  %53 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %18, i32 0, i32 0
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %53, align 8
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %57 = icmp sge i64 0, %56
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %57)
  %58 = getelementptr inbounds i64, ptr %55, i64 0
  %59 = load i64, ptr %58, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %60 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %25, i32 0, i32 0
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %60, align 8
  %62 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %25, i32 0, i32 0
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %62, align 8
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, 0
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, 1
  %66 = icmp sge i64 0, %65
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %64, i64 0
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %67, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %69 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %32, i32 0, i32 0
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %69, align 8
  %71 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %32, i32 0, i32 0
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %71, align 8
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 0
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 1
  %75 = icmp sge i64 0, %74
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %75)
  %76 = getelementptr inbounds i64, ptr %73, i64 0
  %77 = load i64, ptr %76, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 8)
  %7 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]string,string]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 16)
  %7 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"main.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"main.(*Slice[[]int,int]).Append2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 8)
  %7 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"main.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
