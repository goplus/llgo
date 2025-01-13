; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/tptypes'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/tptypes"

%"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]" = type { i64 }
%"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]string,string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }

@"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]", ptr %0, align 4
  %3 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]" %2, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]", ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]", ptr %4, align 8
  %7 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]" %6, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 8, i1 false)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]", ptr %8, i32 0, i32 0
  store i64 100, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]", ptr %8, align 4
  %11 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[int]" %10, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]", ptr %12, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]", ptr %12, align 8
  %15 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Data[string]" %14, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %18 = getelementptr inbounds i64, ptr %17, i64 0
  store i64 100, ptr %18, align 4
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 2
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %24, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 1, 2
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %23, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %32 = getelementptr inbounds i64, ptr %31, i64 0
  store i64 1, ptr %32, align 4
  %33 = getelementptr inbounds i64, ptr %31, i64 1
  store i64 2, ptr %33, align 4
  %34 = getelementptr inbounds i64, ptr %31, i64 2
  store i64 3, ptr %34, align 4
  %35 = getelementptr inbounds i64, ptr %31, i64 3
  store i64 4, ptr %35, align 4
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 4, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 4, 2
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %41 = getelementptr inbounds i64, ptr %40, i64 0
  store i64 1, ptr %41, align 4
  %42 = getelementptr inbounds i64, ptr %40, i64 1
  store i64 2, ptr %42, align 4
  %43 = getelementptr inbounds i64, ptr %40, i64 2
  store i64 3, ptr %43, align 4
  %44 = getelementptr inbounds i64, ptr %40, i64 3
  store i64 4, ptr %44, align 4
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %40, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 4, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 4, 2
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %16, i32 0, i32 0
  %50 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %49, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %16, i32 0, i32 0
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %51, align 8
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 0
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 1
  %55 = icmp sge i64 0, %54
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %55)
  %56 = getelementptr inbounds i64, ptr %53, i64 0
  %57 = load i64, ptr %56, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]string,string]", ptr %23, i32 0, i32 0
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %58, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]string,string]", ptr %23, i32 0, i32 0
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %60, align 8
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 0
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  %64 = icmp sge i64 0, %63
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %62, i64 0
  %66 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %65, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %30, i32 0, i32 0
  %68 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %67, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %30, i32 0, i32 0
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %69, align 8
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 0
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 1
  %73 = icmp sge i64 0, %72
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %73)
  %74 = getelementptr inbounds i64, ptr %71, i64 0
  %75 = load i64, ptr %74, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %75)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 8)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 16)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, ptr %4, i64 %5, i64 8)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
