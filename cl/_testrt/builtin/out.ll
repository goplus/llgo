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
@0 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@6 = private unnamed_addr constant [3 x i8] c"fn\00", align 1

define void @main.demo() {
_llgo_0:
  ret void
}

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
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %14, 1
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %14, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 1, ptr %20, align 4
  %21 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 2, ptr %21, align 4
  %22 = getelementptr inbounds i64, ptr %19, i64 2
  store i64 3, ptr %22, align 4
  %23 = getelementptr inbounds i64, ptr %19, i64 3
  store i64 4, ptr %23, align 4
  %24 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %19, i64 8, i64 4, i64 0, i64 4, i64 4)
  %25 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %24, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %26 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %28 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %29 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %28, i64 8, i64 %26, i64 1, i64 %27, i64 %26)
  %30 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %29, 1
  %31 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %34 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %33, i64 8, i64 %31, i64 1, i64 %32, i64 %31)
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %34, 2
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %38 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %37, i64 8, i64 %36, i64 1, i64 2, i64 %36)
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %38, 1
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %42 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %41, i64 8, i64 %40, i64 1, i64 2, i64 %40)
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %42, 2
  %44 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %46 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %45, i64 8, i64 %44, i64 1, i64 2, i64 2)
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %46, 1
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 2
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %7, 0
  %50 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %49, i64 8, i64 %48, i64 1, i64 2, i64 2)
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %50, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %52 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %53 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %52, 1
  %54 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, 2
  %56 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %56, 1
  %58 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %59 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %58, 2
  %60 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %61 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %60, 1
  %62 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %62, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %64 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 5)
  %65 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %64, 1
  %66 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %64, i64 1, i64 %65)
  %67 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 5)
  %68 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %67, i64 1, i64 2)
  %69 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 5)
  %70 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %69, 1
  %71 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %69, i64 5, i64 %70)
  %72 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %71, 1
  %73 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %73)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %68)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %75 = getelementptr inbounds i64, ptr %74, i64 0
  store i64 5, ptr %75, align 4
  %76 = getelementptr inbounds i64, ptr %74, i64 1
  store i64 6, ptr %76, align 4
  %77 = getelementptr inbounds i64, ptr %74, i64 2
  store i64 7, ptr %77, align 4
  %78 = getelementptr inbounds i64, ptr %74, i64 3
  store i64 8, ptr %78, align 4
  %79 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %74, i64 8, i64 4, i64 0, i64 4, i64 4)
  %80 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, 0
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, 1
  %82 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %7, ptr %80, i64 %81, i64 8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %82)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %84 = getelementptr inbounds i8, ptr %83, i64 0
  store i8 97, ptr %84, align 1
  %85 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 98, ptr %85, align 1
  %86 = getelementptr inbounds i8, ptr %83, i64 2
  store i8 99, ptr %86, align 1
  %87 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %83, i64 1, i64 3, i64 0, i64 3, i64 3)
  %88 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @4, i64 3)
  %89 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %88, 0
  %90 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %88, 1
  %91 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %87, ptr %89, i64 %90, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %91)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %94 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr %93, i64 100)
  store %"github.com/goplus/llgo/internal/runtime.iface" %94, ptr %92, align 8
  %95 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %92, align 8
  %96 = ptrtoint ptr %92 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %95)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %92)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %96)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %99 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %97, i64 1, i64 3, i64 0, i64 3, i64 3)
  %100 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %91, 0
  %101 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %91, 1
  %102 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %99, ptr %100, i64 %101, i64 1)
  store i64 %102, ptr %98, align 4
  %103 = load i64, ptr %98, align 4
  %104 = getelementptr inbounds i8, ptr %97, i64 0
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr inbounds i8, ptr %97, i64 1
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr inbounds i8, ptr %97, i64 2
  %109 = load i8, ptr %108, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %103)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %110 = zext i8 %105 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %110)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %111 = zext i8 %107 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %111)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %112 = zext i8 %109 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %112)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %113 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %97, i64 1, i64 3, i64 1, i64 3, i64 3)
  %114 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @5, i64 4)
  %115 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %114, 0
  %116 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %114, 1
  %117 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %113, ptr %115, i64 %116, i64 1)
  store i64 %117, ptr %98, align 4
  %118 = load i64, ptr %98, align 4
  %119 = getelementptr inbounds i8, ptr %97, i64 0
  %120 = load i8, ptr %119, align 1
  %121 = getelementptr inbounds i8, ptr %97, i64 1
  %122 = load i8, ptr %121, align 1
  %123 = getelementptr inbounds i8, ptr %97, i64 2
  %124 = load i8, ptr %123, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %118)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %125 = zext i8 %120 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %125)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %126 = zext i8 %122 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %126)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %127 = zext i8 %124 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %127)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %129 = getelementptr inbounds { ptr }, ptr %128, i32 0, i32 0
  store ptr %98, ptr %129, align 8
  %130 = alloca { ptr, ptr }, align 8
  %131 = getelementptr inbounds { ptr, ptr }, ptr %130, i32 0, i32 0
  store ptr @"main.main$2", ptr %131, align 8
  %132 = getelementptr inbounds { ptr, ptr }, ptr %130, i32 0, i32 1
  store ptr %128, ptr %132, align 8
  %133 = load { ptr, ptr }, ptr %130, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @"main.main$1")
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %134 = extractvalue { ptr, ptr } %133, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %134)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

define void @"main.main$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define void @"main.main$1"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @6, i64 2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}
