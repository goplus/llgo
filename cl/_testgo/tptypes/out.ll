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
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %0, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %0, align 4
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %4, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %6, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %6, align 8
  %11 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %10, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false)
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %12, i32 0, i32 0
  store i64 100, ptr %14, align 4
  %15 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %12, align 4
  %17 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %16, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  call void @llvm.memset(ptr %18, i8 0, i64 16, i1 false)
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %18, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %20, align 8
  %21 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %18, align 8
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %22, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = getelementptr inbounds i64, ptr %25, i64 0
  store i64 100, ptr %27, align 4
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %25, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %34 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %33, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 2
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %42 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 1, ptr %43, align 4
  %44 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds i64, ptr %41, i64 1
  store i64 2, ptr %45, align 4
  %46 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds i64, ptr %41, i64 2
  store i64 3, ptr %47, align 4
  %48 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = getelementptr inbounds i64, ptr %41, i64 3
  store i64 4, ptr %49, align 4
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %41, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 4, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 4, 2
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52)
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %55 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = getelementptr inbounds i64, ptr %54, i64 0
  store i64 1, ptr %56, align 4
  %57 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 2, ptr %58, align 4
  %59 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = getelementptr inbounds i64, ptr %54, i64 2
  store i64 3, ptr %60, align 4
  %61 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 4, ptr %62, align 4
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %54, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 4, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 4, 2
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65)
  %67 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %24, i32 0, i32 0
  %69 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %68, align 8
  %71 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %24, i32 0, i32 0
  %73 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %72, align 8
  %75 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, 0
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, 1
  %77 = icmp sge i64 0, %76
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %77)
  %78 = getelementptr inbounds i64, ptr %75, i64 0
  %79 = icmp eq ptr %78, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %78, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %81 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %32, i32 0, i32 0
  %83 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %82, align 8
  %85 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %32, i32 0, i32 0
  %87 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %86, align 8
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 0
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 1
  %91 = icmp sge i64 0, %90
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %91)
  %92 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %89, i64 0
  %93 = icmp eq ptr %92, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %92, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %95 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %40, i32 0, i32 0
  %97 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %96, align 8
  %99 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %40, i32 0, i32 0
  %101 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %100, align 8
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, 0
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, 1
  %105 = icmp sge i64 0, %104
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %105)
  %106 = getelementptr inbounds i64, ptr %103, i64 0
  %107 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load i64, ptr %106, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %108)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %6, i64 %7, i64 8)
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr %10, align 8
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %6, i64 %7, i64 16)
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr %10, align 8
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %0, i32 0, i32 0
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %6, i64 %7, i64 8)
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr %10, align 8
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %0, i32 0, i32 0
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
