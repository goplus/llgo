; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/cl/internal/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.bar = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/abi.Name", ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Name" = type { ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@"github.com/goplus/llgo/cl/internal/foo.Foo" = linkonce global ptr null
@main.bar = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@"*_llgo_byte" = linkonce global ptr null
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@5 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/internal/foo.Foo\00", align 1
@6 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@8 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@10 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"main.bar\00", align 1

define { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } @main.Bar(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %2 = load ptr, ptr @"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %5 = load %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %4, align 8
  %6 = alloca { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, align 8
  %7 = getelementptr inbounds { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %6, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" %5, ptr %7, align 8
  %8 = getelementptr inbounds { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %6, i32 0, i32 1
  store i1 true, ptr %8, align 1
  %9 = load { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %6, align 8
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %10 = alloca { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, align 8
  %11 = getelementptr inbounds { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %10, i32 0, i32 0
  store { ptr, double } zeroinitializer, ptr %11, align 8
  %12 = getelementptr inbounds { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %10, i32 0, i32 1
  store i1 false, ptr %12, align 1
  %13 = load { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %10, align 8
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %14 = phi { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } [ %9, %_llgo_1 ], [ %13, %_llgo_2 ]
  %15 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %14, 0
  %16 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %14, 1
  %mrv = insertvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } poison, %"github.com/goplus/llgo/cl/internal/foo.Foo" %15, 0
  %mrv1 = insertvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %mrv, i1 %16, 1
  ret { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %mrv1
}

define { %main.bar, i1 } @main.Foo(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %2 = load ptr, ptr @main.bar, align 8
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %5 = load %main.bar, ptr %4, align 8
  %6 = alloca { %main.bar, i1 }, align 8
  %7 = getelementptr inbounds { %main.bar, i1 }, ptr %6, i32 0, i32 0
  store %main.bar %5, ptr %7, align 8
  %8 = getelementptr inbounds { %main.bar, i1 }, ptr %6, i32 0, i32 1
  store i1 true, ptr %8, align 1
  %9 = load { %main.bar, i1 }, ptr %6, align 8
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  %10 = alloca { %main.bar, i1 }, align 8
  %11 = getelementptr inbounds { %main.bar, i1 }, ptr %10, i32 0, i32 0
  store { ptr, double } zeroinitializer, ptr %11, align 8
  %12 = getelementptr inbounds { %main.bar, i1 }, ptr %10, i32 0, i32 1
  store i1 false, ptr %12, align 1
  %13 = load { %main.bar, i1 }, ptr %10, align 8
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %14 = phi { %main.bar, i1 } [ %9, %_llgo_1 ], [ %13, %_llgo_2 ]
  %15 = extractvalue { %main.bar, i1 } %14, 0
  %16 = extractvalue { %main.bar, i1 } %14, 1
  %mrv = insertvalue { %main.bar, i1 } poison, %main.bar %15, 0
  %mrv1 = insertvalue { %main.bar, i1 } %mrv, i1 %16, 1
  ret { %main.bar, i1 } %mrv1
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/internal/foo.init"()
  call void @"main.init$abi"()
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
  %2 = alloca %main.bar, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  %4 = call { %main.bar, i1 } @main.Foo(%"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  %5 = extractvalue { %main.bar, i1 } %4, 0
  store %main.bar %5, ptr %3, align 8
  %6 = extractvalue { %main.bar, i1 } %4, 1
  %7 = getelementptr inbounds %main.bar, ptr %3, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %main.bar, ptr %3, i32 0, i32 1
  %10 = load float, ptr %9, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %11 = fpext float %10 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %12 = alloca %"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %12, i64 16)
  %14 = load ptr, ptr @"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" zeroinitializer, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %16, i32 0, i32 0
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %16, i32 0, i32 1
  store ptr %15, ptr %18, align 8
  %19 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %16, align 8
  %20 = call { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } @main.Bar(%"github.com/goplus/llgo/internal/runtime.eface" %19)
  %21 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %20, 0
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" %21, ptr %13, align 8
  %22 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %20, 1
  %23 = load %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %13, align 8
  %24 = call ptr @"(github.com/goplus/llgo/cl/internal/foo.Foo).Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo" %23)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %13, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %27 = fpext float %26 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"(github.com/goplus/llgo/cl/internal/foo.Foo).Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo")

define void @"main.init$abi"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 2, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = load ptr, ptr @"*_llgo_byte", align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @1, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %5, ptr %6, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false, i1 false)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @2, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 1, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @3, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %15, ptr %16, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %20, i1 true, i1 false)
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @4, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 4, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %27 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %26, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %11, ptr %27, align 8
  %28 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %26, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %21, ptr %28, align 8
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 0
  store ptr %26, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 1
  store i64 2, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 2
  store i64 2, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %25, %"github.com/goplus/llgo/internal/runtime.Slice" %33)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @5, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 42, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String" %38, ptr %34)
  store ptr %39, ptr @"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @6, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 2, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = load ptr, ptr @"*_llgo_byte", align 8
  %45 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 0
  store ptr @7, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 1
  store i64 0, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %45, align 8
  %49 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %43, ptr %44, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %48, i1 false, i1 false)
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 0
  store ptr @8, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 1
  store i64 1, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %50, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @9, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 0, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %53, ptr %54, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %58, i1 false, i1 false)
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr @10, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 4, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %65 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %64, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %49, ptr %65, align 8
  %66 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %64, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %59, ptr %66, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 0
  store ptr %64, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 1
  store i64 2, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 2
  store i64 2, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, align 8
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %63, %"github.com/goplus/llgo/internal/runtime.Slice" %71)
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 0
  store ptr @11, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 1
  store i64 8, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %73, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String" %76, ptr %72)
  store ptr %77, ptr @main.bar, align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(i64, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1, i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String", ptr)
