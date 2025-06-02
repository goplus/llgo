; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tptypes'
source_filename = "github.com/goplus/llgo/cl/_testgo/tptypes"

%"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }

@"github.com/goplus/llgo/cl/_testgo/tptypes.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testgo/tptypes.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tptypes.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tptypes.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tptypes.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %0, align 4
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %2, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %4, align 8
  %7 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %6, 0
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, ptr %8, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %9, i8 0, i64 8, i1 false)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %9, i32 0, i32 0
  store i64 100, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %9, align 4
  %12 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %11, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %13, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %13, align 8
  %16 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %15, 0
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %17)
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
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %25, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %24, ptr %18, ptr %25)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %24, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 2
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, ptr %34, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %33, ptr %27, ptr %34)
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %33, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %38 = getelementptr inbounds i64, ptr %37, i64 0
  store i64 1, ptr %38, align 4
  %39 = getelementptr inbounds i64, ptr %37, i64 1
  store i64 2, ptr %39, align 4
  %40 = getelementptr inbounds i64, ptr %37, i64 2
  store i64 3, ptr %40, align 4
  %41 = getelementptr inbounds i64, ptr %37, i64 3
  store i64 4, ptr %41, align 4
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 4, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 4, 2
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %46 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, ptr %46, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %45, ptr %36, ptr %46)
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %45, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %49 = getelementptr inbounds i64, ptr %48, i64 0
  store i64 1, ptr %49, align 4
  %50 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 2, ptr %50, align 4
  %51 = getelementptr inbounds i64, ptr %48, i64 2
  store i64 3, ptr %51, align 4
  %52 = getelementptr inbounds i64, ptr %48, i64 3
  store i64 4, ptr %52, align 4
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 4, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 4, 2
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, ptr %57, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %56, ptr %36, ptr %57)
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %56, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %18, i32 0, i32 0
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %59, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %18, i32 0, i32 0
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %61, align 8
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 0
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %65 = icmp sge i64 0, %64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %65)
  %66 = getelementptr inbounds i64, ptr %63, i64 0
  %67 = load i64, ptr %66, align 4
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, ptr %68, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %27, i32 0, i32 0
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %69, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %27, i32 0, i32 0
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %71, align 8
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 0
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 1
  %75 = icmp sge i64 0, %74
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %75)
  %76 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %73, i64 0
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %76, align 8
  %78 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, ptr %78, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %77, ptr %79, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %36, i32 0, i32 0
  %81 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %80, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %36, i32 0, i32 0
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %82, align 8
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, 0
  %85 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, 1
  %86 = icmp sge i64 0, %85
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %86)
  %87 = getelementptr inbounds i64, ptr %84, i64 0
  %88 = load i64, ptr %87, align 4
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, ptr %89, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %8, ptr %9, ptr %6, i64 %7, i64 8)
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %1, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, ptr %0, align 8
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %8, ptr %9, ptr %6, i64 %7, i64 16)
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %1, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, ptr %0, align 8
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %8, ptr %9, ptr %6, i64 %7, i64 8)
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %1, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, ptr %0, align 8
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr, ptr, ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
