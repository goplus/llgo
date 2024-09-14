; ModuleID = 'main'
source_filename = "main"

%main.point = type { i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [6 x i8] c"123456", align 1

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
  %2 = alloca %main.point, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = alloca [3 x %main.point], align 8
  call void @llvm.memset(ptr %3, i8 0, i64 48, i1 false)
  %4 = getelementptr inbounds %main.point, ptr %3, i64 0
  %5 = getelementptr inbounds %main.point, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %main.point, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %main.point, ptr %3, i64 1
  %8 = getelementptr inbounds %main.point, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %main.point, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %main.point, ptr %3, i64 2
  %11 = getelementptr inbounds %main.point, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %main.point, ptr %10, i32 0, i32 1
  store i64 1, ptr %5, align 4
  store i64 2, ptr %6, align 4
  store i64 3, ptr %8, align 4
  store i64 4, ptr %9, align 4
  store i64 5, ptr %11, align 4
  store i64 6, ptr %12, align 4
  %13 = load [3 x %main.point], ptr %3, align 4
  %14 = getelementptr inbounds %main.point, ptr %3, i64 2
  %15 = load %main.point, ptr %14, align 4
  store %main.point %15, ptr %2, align 4
  %16 = getelementptr inbounds %main.point, ptr %2, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %main.point, ptr %2, i32 0, i32 1
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %20 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %20, i8 0, i64 16, i1 false)
  %21 = alloca [2 x [2 x i64]], align 8
  call void @llvm.memset(ptr %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds [2 x i64], ptr %21, i64 0
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  %24 = getelementptr inbounds i64, ptr %22, i64 1
  %25 = getelementptr inbounds [2 x i64], ptr %21, i64 1
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  %27 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 1, ptr %23, align 4
  store i64 2, ptr %24, align 4
  store i64 3, ptr %26, align 4
  store i64 4, ptr %27, align 4
  %28 = load [2 x [2 x i64]], ptr %21, align 4
  %29 = getelementptr inbounds [2 x i64], ptr %21, i64 1
  %30 = load [2 x i64], ptr %29, align 4
  store [2 x i64] %30, ptr %20, align 4
  %31 = getelementptr inbounds i64, ptr %20, i64 0
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds i64, ptr %20, i64 1
  %34 = load i64, ptr %33, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %35 = alloca [5 x i64], align 8
  call void @llvm.memset(ptr %35, i8 0, i64 40, i1 false)
  %36 = getelementptr inbounds i64, ptr %35, i64 0
  %37 = getelementptr inbounds i64, ptr %35, i64 1
  %38 = getelementptr inbounds i64, ptr %35, i64 2
  %39 = getelementptr inbounds i64, ptr %35, i64 3
  %40 = getelementptr inbounds i64, ptr %35, i64 4
  store i64 1, ptr %36, align 4
  store i64 2, ptr %37, align 4
  store i64 3, ptr %38, align 4
  store i64 4, ptr %39, align 4
  store i64 5, ptr %40, align 4
  %41 = load [5 x i64], ptr %35, align 4
  %42 = getelementptr inbounds i64, ptr %35, i64 2
  %43 = load i64, ptr %42, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 0
  store ptr @0, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 1
  store i64 6, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %47, 0
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %47, 1
  %50 = icmp sge i64 2, %49
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %50)
  %51 = getelementptr inbounds i8, ptr %48, i64 2
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32 %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %54)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @0, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 6, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %58, 0
  %60 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %58, 1
  %61 = icmp sge i64 1, %60
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %61)
  %62 = getelementptr inbounds i8, ptr %59, i64 1
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32 %64)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %65)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %67 = getelementptr inbounds i64, ptr %66, i64 0
  %68 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 1, ptr %67, align 4
  store i64 2, ptr %68, align 4
  %69 = getelementptr inbounds i64, ptr %66, i64 1
  %70 = load i64, ptr %69, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %72 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 1, ptr %72, align 4
  %73 = getelementptr inbounds i64, ptr %71, i64 1
  store i64 2, ptr %73, align 4
  %74 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 3, ptr %74, align 4
  %75 = getelementptr inbounds i64, ptr %71, i64 3
  store i64 4, ptr %75, align 4
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 0
  store ptr %71, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 1
  store i64 4, ptr %78, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 2
  store i64 4, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, align 8
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, 0
  %82 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, 1
  %83 = icmp sge i64 1, %82
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %83)
  %84 = getelementptr inbounds i64, ptr %81, i64 1
  %85 = load i64, ptr %84, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %85)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromRune"(i32)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
