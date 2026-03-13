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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %0, align 4
  %4 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %3, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %5, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %6, align 8
  %7 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %5, align 8
  %9 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %8, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %10, i32 0, i32 0
  store i64 100, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %10, align 4
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %13, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %15, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %15, align 8
  %19 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %18, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %22 = getelementptr inbounds i64, ptr %21, i64 0
  store i64 100, ptr %22, align 4
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 2
  %26 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %20, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 2
  %33 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %27, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %36 = getelementptr inbounds i64, ptr %35, i64 0
  store i64 1, ptr %36, align 4
  %37 = getelementptr inbounds i64, ptr %35, i64 1
  store i64 2, ptr %37, align 4
  %38 = getelementptr inbounds i64, ptr %35, i64 2
  store i64 3, ptr %38, align 4
  %39 = getelementptr inbounds i64, ptr %35, i64 3
  store i64 4, ptr %39, align 4
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 4, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 4, 2
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %34, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42)
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %45 = getelementptr inbounds i64, ptr %44, i64 0
  store i64 1, ptr %45, align 4
  %46 = getelementptr inbounds i64, ptr %44, i64 1
  store i64 2, ptr %46, align 4
  %47 = getelementptr inbounds i64, ptr %44, i64 2
  store i64 3, ptr %47, align 4
  %48 = getelementptr inbounds i64, ptr %44, i64 3
  store i64 4, ptr %48, align 4
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %44, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 4, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 4, 2
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %34, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %20, i32 0, i32 0
  %54 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %53, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %20, i32 0, i32 0
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %56, align 8
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 0
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %61 = icmp sge i64 0, %60
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %61)
  %62 = getelementptr inbounds i64, ptr %59, i64 0
  %63 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %62, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %27, i32 0, i32 0
  %66 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %65, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %27, i32 0, i32 0
  %69 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %68, align 8
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 0
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 1
  %73 = icmp sge i64 0, %72
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %73)
  %74 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %71, i64 0
  %75 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %74, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %76)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %34, i32 0, i32 0
  %78 = icmp eq ptr %77, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %77, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %34, i32 0, i32 0
  %81 = icmp eq ptr %80, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %80, align 8
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, 0
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, 1
  %85 = icmp sge i64 0, %84
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %85)
  %86 = getelementptr inbounds i64, ptr %83, i64 0
  %87 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %86, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %5, i64 %6, i64 8)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %5, i64 %6, i64 16)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %5, i64 %6, i64 8)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
