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
@runtime.type.int = linkonce_odr constant { i64, i64, i32, i8, i8, i8, i8, ptr, i64, i32, i32 } { i64 8, i64 0, i32 0, i8 0, i8 0, i8 0, i8 2, ptr @"github.com/goplus/llgo/internal/runtime.EqualBasic", i64 0, i32 0, i32 0 }
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
  %64 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %64, i32 0, i32 0
  store ptr @0, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %64, i32 0, i32 1
  store i64 5, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %64, align 8
  %68 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %67, 1
  %69 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %67, i64 1, i64 %68)
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr @1, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 5, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %73, i64 1, i64 2)
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 0
  store ptr @2, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 1
  store i64 5, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %75, align 8
  %79 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %78, 1
  %80 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %78, i64 5, i64 %79)
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %80, 1
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @3, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 5, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %85)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %69)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %74)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %81)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 5, ptr %87, align 4
  %88 = getelementptr inbounds i64, ptr %86, i64 1
  store i64 6, ptr %88, align 4
  %89 = getelementptr inbounds i64, ptr %86, i64 2
  store i64 7, ptr %89, align 4
  %90 = getelementptr inbounds i64, ptr %86, i64 3
  store i64 8, ptr %90, align 4
  %91 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %86, i64 8, i64 4, i64 0, i64 4, i64 4)
  %92 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %91, 0
  %93 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %91, 1
  %94 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %7, ptr %92, i64 %93, i64 8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %94)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %96 = getelementptr inbounds i8, ptr %95, i64 0
  store i8 97, ptr %96, align 1
  %97 = getelementptr inbounds i8, ptr %95, i64 1
  store i8 98, ptr %97, align 1
  %98 = getelementptr inbounds i8, ptr %95, i64 2
  store i8 99, ptr %98, align 1
  %99 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %95, i64 1, i64 3, i64 0, i64 3, i64 3)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @4, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 3, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %103, 0
  %105 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %103, 1
  %106 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %99, ptr %104, i64 %105, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice" %106)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %108 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr @runtime.type.int, i64 100)
  store %"github.com/goplus/llgo/internal/runtime.iface" %108, ptr %107, align 8
  %109 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %107, align 8
  %110 = ptrtoint ptr %107 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %109)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %107)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %110)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 3)
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %113 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %111, i64 1, i64 3, i64 0, i64 3, i64 3)
  %114 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %106, 0
  %115 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %106, 1
  %116 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %113, ptr %114, i64 %115, i64 1)
  store i64 %116, ptr %112, align 4
  %117 = load i64, ptr %112, align 4
  %118 = getelementptr inbounds i8, ptr %111, i64 0
  %119 = load i8, ptr %118, align 1
  %120 = getelementptr inbounds i8, ptr %111, i64 1
  %121 = load i8, ptr %120, align 1
  %122 = getelementptr inbounds i8, ptr %111, i64 2
  %123 = load i8, ptr %122, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %117)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %124 = zext i8 %119 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %124)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %125 = zext i8 %121 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %125)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %126 = zext i8 %123 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %126)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %127 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %111, i64 1, i64 3, i64 1, i64 3, i64 3)
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 0
  store ptr @5, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 1
  store i64 4, ptr %130, align 4
  %131 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %128, align 8
  %132 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %131, 0
  %133 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %131, 1
  %134 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %127, ptr %132, i64 %133, i64 1)
  store i64 %134, ptr %112, align 4
  %135 = load i64, ptr %112, align 4
  %136 = getelementptr inbounds i8, ptr %111, i64 0
  %137 = load i8, ptr %136, align 1
  %138 = getelementptr inbounds i8, ptr %111, i64 1
  %139 = load i8, ptr %138, align 1
  %140 = getelementptr inbounds i8, ptr %111, i64 2
  %141 = load i8, ptr %140, align 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %135)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %142 = zext i8 %137 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %142)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %143 = zext i8 %139 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %143)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %144 = zext i8 %141 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %144)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %146 = getelementptr inbounds { ptr }, ptr %145, i32 0, i32 0
  store ptr %112, ptr %146, align 8
  %147 = alloca { ptr, ptr }, align 8
  %148 = getelementptr inbounds { ptr, ptr }, ptr %147, i32 0, i32 0
  store ptr @"main.main$2", ptr %148, align 8
  %149 = getelementptr inbounds { ptr, ptr }, ptr %147, i32 0, i32 1
  store ptr %145, ptr %149, align 8
  %150 = load { ptr, ptr }, ptr %147, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @"main.main$1")
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %151 = extractvalue { ptr, ptr } %150, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %151)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyIntptr"(ptr, i64)

declare i1 @"github.com/goplus/llgo/internal/runtime.EqualBasic"(ptr, ptr)

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
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @6, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 2, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}
