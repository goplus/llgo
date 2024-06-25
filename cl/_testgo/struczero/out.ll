; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/cl/internal/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.bar = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo" = linkonce global ptr null, align 8
@"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs" = global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"pb", align 1
@1 = private unnamed_addr constant [1 x i8] c"F", align 1
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE" = linkonce global ptr null, align 8
@_llgo_byte = linkonce global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
@5 = private unnamed_addr constant [3 x i8] c"Foo", align 1
@_llgo_main.bar = global ptr null, align 8
@"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo" = global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"f", align 1
@7 = private unnamed_addr constant [3 x i8] c"bar", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"notOk:", align 1

define { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } @main.Bar(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
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
  %2 = load ptr, ptr @_llgo_main.bar, align 8
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
  call void @"main.init$after"()
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
  %11 = xor i1 %6, true
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @8, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 6, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %16 = fpext float %10 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %17 = alloca %"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %17, i64 16)
  %19 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" zeroinitializer, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, i32 0, i32 0
  store ptr %19, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, i32 0, i32 1
  store ptr %20, ptr %23, align 8
  %24 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, align 8
  %25 = call { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } @main.Bar(%"github.com/goplus/llgo/internal/runtime.eface" %24)
  %26 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %25, 0
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" %26, ptr %18, align 8
  %27 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %25, 1
  %28 = load %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %18, align 8
  %29 = call ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo" %28)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %18, i32 0, i32 1
  %31 = load float, ptr %30, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %32 = fpext float %31 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 2, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %11)
  %13 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %6, ptr %12, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false)
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @1, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 1, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 0, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %23 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %17, ptr %22, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %21, i1 false)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 4, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %29 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %28, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %13, ptr %29, align 8
  %30 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %28, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %23, ptr %30, align 8
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 0
  store ptr %28, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 1
  store i64 2, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 2
  store i64 2, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %27, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %35)
  store ptr %36, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  %37 = load ptr, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  br i1 %1, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @3, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 2, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = load ptr, ptr @_llgo_byte, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_10, %_llgo_2
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 0)
  store ptr %44, ptr @_llgo_main.bar, align 8
  %45 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 0
  store ptr @0, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 1
  store i64 2, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %45, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 0
  store ptr null, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %49, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %53)
  %55 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %48, ptr %54, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %52, i1 false)
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @6, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 1, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr null, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 0, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %65 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %59, ptr %64, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %63, i1 false)
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @2, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 4, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %71 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %70, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %55, ptr %71, align 8
  %72 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %70, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %65, ptr %72, align 8
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 0
  store ptr %70, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 1
  store i64 2, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 2
  store i64 2, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, align 8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %69, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %77)
  store ptr %78, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %79 = load ptr, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr @2, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 4, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @7, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 3, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %44, %"github.com/goplus/llgo/internal/runtime.String" %83, %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %79, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %88, i32 0, i32 6
  %90 = load i8, ptr %89, align 1
  %91 = or i8 %90, 32
  store i8 %91, ptr %89, align 1
  store ptr %88, ptr @_llgo_byte, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %92 = load ptr, ptr @"*_llgo_byte", align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %94)
  store ptr %95, ptr @"*_llgo_byte", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %96 = load ptr, ptr @"*_llgo_byte", align 8
  %97 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 0
  store ptr %99, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 1
  store i64 0, ptr %102, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 2
  store i64 0, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %106 = getelementptr ptr, ptr %105, i64 0
  store ptr %96, ptr %106, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 0
  store ptr %105, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 1
  store i64 1, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 2
  store i64 1, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %104, %"github.com/goplus/llgo/internal/runtime.Slice" %111, i1 false)
  store ptr %112, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %113 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %114 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %114, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %114, i32 0, i32 1
  store ptr %113, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %114, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %114, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %118, align 8
  %119 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %114, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %120, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %120, i32 0, i32 1
  store ptr %113, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %120, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %120, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb", ptr %124, align 8
  %125 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %120, align 8
  %126 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %127 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %125, ptr %127, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 0
  store ptr %126, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 1
  store i64 1, ptr %130, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 2
  store i64 1, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %134 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %133, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %119, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %133, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 1, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 1, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @4, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 38, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @5, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 3, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %143, %"github.com/goplus/llgo/internal/runtime.String" %147, ptr %37, %"github.com/goplus/llgo/internal/runtime.Slice" %132, %"github.com/goplus/llgo/internal/runtime.Slice" %139)
  br label %_llgo_4
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb"(ptr)

declare ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo")

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
