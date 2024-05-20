; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@main.a = global ptr null
@main.b = global ptr null
@"main.init$guard" = global ptr null
@main.n = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [2 x i8] c" \00", align 1
@1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@24 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@25 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@26 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@27 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@29 = private unnamed_addr constant [2 x i8] c" \00", align 1
@30 = private unnamed_addr constant [2 x i8] c" \00", align 1
@31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@38 = private unnamed_addr constant [2 x i8] c" \00", align 1
@39 = private unnamed_addr constant [2 x i8] c" \00", align 1
@40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@42 = private unnamed_addr constant [2 x i8] c" \00", align 1
@43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@45 = private unnamed_addr constant [2 x i8] c" \00", align 1
@46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@47 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@48 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@49 = private unnamed_addr constant [2 x i8] c" \00", align 1
@50 = private unnamed_addr constant [2 x i8] c" \00", align 1
@51 = private unnamed_addr constant [2 x i8] c" \00", align 1
@52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %7 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %2, i64 8, i64 4, i64 0, i64 4, i64 4)
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  %10 = getelementptr inbounds i64, ptr %8, i64 1
  %11 = getelementptr inbounds i64, ptr %8, i64 2
  %12 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1, ptr %9, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %11, align 4
  store i64 4, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 10)
  %14 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %13, i64 1, i64 10, i64 0, i64 4, i64 10)
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 1
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %7)
  %17 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %15)
  %18 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %16)
  %19 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %19)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %14, 1
  %21 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %14, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %14)
  %22 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %20)
  %23 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %21)
  %24 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  %25 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @6, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  %26 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @7, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  %27 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @8, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  %28 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @9, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %30 = getelementptr inbounds i64, ptr %29, i64 0
  store i64 1, ptr %30, align 4
  %31 = getelementptr inbounds i64, ptr %29, i64 1
  store i64 2, ptr %31, align 4
  %32 = getelementptr inbounds i64, ptr %29, i64 2
  store i64 3, ptr %32, align 4
  %33 = getelementptr inbounds i64, ptr %29, i64 3
  store i64 4, ptr %33, align 4
  %34 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %29, i64 8, i64 4, i64 0, i64 4, i64 4)
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %34, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %35)
  %36 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @10, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %36)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  %37 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @11, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %37)
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %41 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %40, i64 8, i64 %38, i64 1, i64 %39, i64 %38)
  %42 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %41, 1
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %44 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %46 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %45, i64 8, i64 %43, i64 1, i64 %44, i64 %43)
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %46, 2
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %50 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %49, i64 8, i64 %48, i64 1, i64 2, i64 %48)
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %50, 1
  %52 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %53 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %54 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %53, i64 8, i64 %52, i64 1, i64 2, i64 %52)
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, 2
  %56 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %58 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %57, i64 8, i64 %56, i64 1, i64 2, i64 2)
  %59 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %58, 1
  %60 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %61 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %62 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %61, i64 8, i64 %60, i64 1, i64 2, i64 2)
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %62, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %42)
  %64 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @12, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %64)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %47)
  %65 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @13, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %65)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %51)
  %66 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @14, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %55)
  %67 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @15, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %67)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %59)
  %68 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @16, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %68)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %63)
  %69 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @17, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %69)
  %70 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %71 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %70, 1
  %72 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %73 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %72, 2
  %74 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %75 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %74, 1
  %76 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %77 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %76, 2
  %78 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %79 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %78, 1
  %80 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %71)
  %82 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @18, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %82)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %73)
  %83 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @19, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %83)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %75)
  %84 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @20, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %84)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %77)
  %85 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @21, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %85)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %79)
  %86 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @22, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %86)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %81)
  %87 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @23, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %87)
  %88 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @24, i64 5)
  %89 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %88, 1
  %90 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %88, i64 1, i64 %89)
  %91 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @25, i64 5)
  %92 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %91, i64 1, i64 2)
  %93 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @26, i64 5)
  %94 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %93, 1
  %95 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %93, i64 5, i64 %94)
  %96 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %95, 1
  %97 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @27, i64 5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %97)
  %98 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @28, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %98)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %90)
  %99 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @29, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %99)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %92)
  %100 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @30, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %96)
  %101 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @31, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %101)
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %103 = getelementptr inbounds i64, ptr %102, i64 0
  store i64 5, ptr %103, align 4
  %104 = getelementptr inbounds i64, ptr %102, i64 1
  store i64 6, ptr %104, align 4
  %105 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 7, ptr %105, align 4
  %106 = getelementptr inbounds i64, ptr %102, i64 3
  store i64 8, ptr %106, align 4
  %107 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %102, i64 8, i64 4, i64 0, i64 4, i64 4)
  %108 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %107, 0
  %109 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %107, 1
  %110 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %7, ptr %108, i64 %109, i64 8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %110)
  %111 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @32, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %111)
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %113 = getelementptr inbounds i8, ptr %112, i64 0
  store i8 97, ptr %113, align 1
  %114 = getelementptr inbounds i8, ptr %112, i64 1
  store i8 98, ptr %114, align 1
  %115 = getelementptr inbounds i8, ptr %112, i64 2
  store i8 99, ptr %115, align 1
  %116 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %112, i64 1, i64 3, i64 0, i64 3, i64 3)
  %117 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @33, i64 3)
  %118 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %117, 0
  %119 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %117, 1
  %120 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %116, ptr %118, i64 %119, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %120)
  %121 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @34, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %121)
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %124 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %123, i64 100)
  store %"github.com/goplus/llgo/internal/runtime.iface" %124, ptr %122, align 8
  %125 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %122, align 8
  %126 = ptrtoint ptr %122 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  %127 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @35, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %127)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 100)
  %128 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @36, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %128)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  %129 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @37, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %129)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 255)
  %130 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @38, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %130)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  %131 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @39, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %131)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 1.005000e+02)
  %132 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @40, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %132)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %125)
  %133 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @41, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %133)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %122)
  %134 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @42, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %134)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %126)
  %135 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @43, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %135)
  %136 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %137 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %136, i64 1, i64 3, i64 0, i64 3, i64 3)
  %138 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %120, 0
  %139 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %120, 1
  %140 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %137, ptr %138, i64 %139, i64 1)
  %141 = getelementptr inbounds i8, ptr %136, i64 0
  %142 = load i8, ptr %141, align 1
  %143 = getelementptr inbounds i8, ptr %136, i64 1
  %144 = load i8, ptr %143, align 1
  %145 = getelementptr inbounds i8, ptr %136, i64 2
  %146 = load i8, ptr %145, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %140)
  %147 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @44, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %147)
  %148 = zext i8 %142 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %148)
  %149 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @45, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %149)
  %150 = zext i8 %144 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %150)
  %151 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @46, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %151)
  %152 = zext i8 %146 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %152)
  %153 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @47, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %153)
  %154 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %136, i64 1, i64 3, i64 1, i64 3, i64 3)
  %155 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @48, i64 4)
  %156 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %155, 0
  %157 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %155, 1
  %158 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %154, ptr %156, i64 %157, i64 1)
  %159 = getelementptr inbounds i8, ptr %136, i64 0
  %160 = load i8, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %136, i64 1
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr inbounds i8, ptr %136, i64 2
  %164 = load i8, ptr %163, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %158)
  %165 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @49, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %165)
  %166 = zext i8 %160 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %166)
  %167 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @50, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %167)
  %168 = zext i8 %162 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %168)
  %169 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @51, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %169)
  %170 = zext i8 %164 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %170)
  %171 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @52, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %171)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)
