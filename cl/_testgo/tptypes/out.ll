; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tptypes'
source_filename = "github.com/goplus/llgo/cl/_testgo/tptypes"

%"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" = type { i64 }
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
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %3, i32 0, i32 0
  store i64 1, ptr %5, align 4
  %6 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %3, align 4
  %8 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %7, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %9 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %2, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %10, align 8
  %11 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %2, align 8
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]" %12, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %14 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %1, i32 0, i32 0
  store i64 100, ptr %15, align 4
  %16 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]", ptr %1, align 4
  %18 = extractvalue %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[int]" %17, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %20, align 8
  %21 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/tptypes.Data[string]", ptr %0, align 8
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
  %28 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %25, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 2
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %35 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %34, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %36, align 8
  %37 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %34, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 1, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 1, 2
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]string,string]).Append"(ptr %33, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = getelementptr inbounds i64, ptr %43, i64 0
  store i64 1, ptr %45, align 4
  %46 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 2, ptr %47, align 4
  %48 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = getelementptr inbounds i64, ptr %43, i64 2
  store i64 3, ptr %49, align 4
  %50 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = getelementptr inbounds i64, ptr %43, i64 3
  store i64 4, ptr %51, align 4
  %52 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %43, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 4, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 4, 2
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append"(ptr %42, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %58 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 1, ptr %59, align 4
  %60 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 2, ptr %61, align 4
  %62 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = getelementptr inbounds i64, ptr %57, i64 2
  store i64 3, ptr %63, align 4
  %64 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = getelementptr inbounds i64, ptr %57, i64 3
  store i64 4, ptr %65, align 4
  %66 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 4, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 4, 2
  %70 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/tptypes.(*Slice[[]int,int]).Append2"(ptr %42, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69)
  %71 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %24, i32 0, i32 0
  %73 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %72, align 8
  %75 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %24, i32 0, i32 0
  %77 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %76, align 8
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 0
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 1
  %81 = icmp sge i64 0, %80
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %81, i64 0, i64 %80)
  %82 = getelementptr inbounds i64, ptr %79, i64 0
  %83 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %82, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %85 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %33, i32 0, i32 0
  %87 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %86, align 8
  %89 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]string,string]", ptr %33, i32 0, i32 0
  %91 = icmp eq ptr %90, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %90, align 8
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 0
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 1
  %95 = icmp sge i64 0, %94
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %95, i64 0, i64 %94)
  %96 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %93, i64 0
  %97 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %96, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %98)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %99 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %42, i32 0, i32 0
  %101 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %100, align 8
  %103 = icmp eq ptr %42, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tptypes.Slice[[]int,int]", ptr %42, i32 0, i32 0
  %105 = icmp eq ptr %104, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %104, align 8
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, 0
  %108 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, 1
  %109 = icmp sge i64 0, %108
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %109, i64 0, i64 %108)
  %110 = getelementptr inbounds i64, ptr %107, i64 0
  %111 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load i64, ptr %110, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %112)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
