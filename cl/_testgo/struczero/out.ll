; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/cl/internal/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.bar = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo" = linkonce global ptr null, align 8
@"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"pb", align 1
@1 = private unnamed_addr constant [1 x i8] c"F", align 1
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE" = linkonce global ptr null, align 8
@_llgo_byte = linkonce global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
@5 = private unnamed_addr constant [3 x i8] c"Foo", align 1
@_llgo_main.bar = linkonce global ptr null, align 8
@"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo" = linkonce global ptr null, align 8
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
  %17 = alloca { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, align 8
  %18 = getelementptr inbounds { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %17, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" %15, ptr %18, align 8
  %19 = getelementptr inbounds { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %17, i32 0, i32 1
  store i1 %16, ptr %19, align 1
  %20 = load { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 }, ptr %17, align 8
  ret { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %20
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
  %17 = alloca { %main.bar, i1 }, align 8
  %18 = getelementptr inbounds { %main.bar, i1 }, ptr %17, i32 0, i32 0
  store %main.bar %15, ptr %18, align 8
  %19 = getelementptr inbounds { %main.bar, i1 }, ptr %17, i32 0, i32 1
  store i1 %16, ptr %19, align 1
  %20 = load { %main.bar, i1 }, ptr %17, align 8
  ret { %main.bar, i1 } %20
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 1, i64 1)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
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
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
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
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
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
  br i1 %2, label %_llgo_3, label %_llgo_4

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
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 0, i64 0)
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
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
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
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
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
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %88, ptr @_llgo_byte, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %89 = load ptr, ptr @"*_llgo_byte", align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %91)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %92)
  store ptr %92, ptr @"*_llgo_byte", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %93 = load ptr, ptr @"*_llgo_byte", align 8
  %94 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 0
  store ptr %96, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 1
  store i64 0, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 2
  store i64 0, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %103 = getelementptr ptr, ptr %102, i64 0
  store ptr %93, ptr %103, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 0
  store ptr %102, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 1
  store i64 1, ptr %106, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 2
  store i64 1, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %101, %"github.com/goplus/llgo/internal/runtime.Slice" %108, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %109)
  store ptr %109, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %110 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %111 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 1
  store ptr %110, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %115, align 8
  %116 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %111, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %117, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %117, i32 0, i32 1
  store ptr %110, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %117, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %117, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb", ptr %121, align 8
  %122 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %117, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %124 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %123, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %122, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 0
  store ptr %123, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 1
  store i64 1, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 2
  store i64 1, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %131 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %130, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %116, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 0
  store ptr %130, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 1
  store i64 1, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 2
  store i64 1, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr @4, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 38, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr @5, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 3, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %140, %"github.com/goplus/llgo/internal/runtime.String" %144, ptr %37, %"github.com/goplus/llgo/internal/runtime.Slice" %129, %"github.com/goplus/llgo/internal/runtime.Slice" %136)
  br label %_llgo_4
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

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
