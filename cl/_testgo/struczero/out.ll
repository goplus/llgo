; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/cl/internal/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.bar = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo" = linkonce global ptr null, align 8
@"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs" = global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@_llgo_float32 = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"pb", align 1
@1 = private unnamed_addr constant [1 x i8] c"F", align 1
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE" = linkonce global ptr null, align 8
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
  %3 = load ptr, ptr @"*_llgo_byte", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %5)
  store ptr %6, ptr @"*_llgo_byte", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @"*_llgo_byte", align 8
  %8 = load ptr, ptr @_llgo_float32, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %10, i32 0, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = or i8 %12, 32
  store i8 %13, ptr %11, align 1
  store ptr %10, ptr @_llgo_float32, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = load ptr, ptr @_llgo_float32, align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @0, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 2, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 0, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %18, ptr %7, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %22, i1 false)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @1, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 0
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 1
  store i64 0, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  %32 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %27, ptr %14, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %31, i1 false)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @2, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 4, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %38 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %37, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %23, ptr %38, align 8
  %39 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %37, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %32, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 0
  store ptr %37, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 1
  store i64 2, ptr %42, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 2
  store i64 2, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %36, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %44)
  store ptr %45, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  %46 = load ptr, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  br i1 %1, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @3, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 2, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = load ptr, ptr @"*_llgo_byte", align 8
  %52 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 0)
  store ptr %54, ptr @_llgo_main.bar, align 8
  %55 = load ptr, ptr @"*_llgo_byte", align 8
  %56 = load ptr, ptr @_llgo_float32, align 8
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 0
  store ptr @0, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 1
  store i64 2, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %57, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr null, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 0, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  %65 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %60, ptr %55, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %64, i1 false)
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @6, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 1, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr null, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 0, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %69, ptr %56, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %73, i1 false)
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 0
  store ptr @2, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 1
  store i64 4, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %75, align 8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %80 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %79, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %65, ptr %80, align 8
  %81 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %79, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %74, ptr %81, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 0
  store ptr %79, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 1
  store i64 2, ptr %84, align 4
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, i32 0, i32 2
  store i64 2, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %82, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %78, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %86)
  store ptr %87, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %88 = load ptr, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @2, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 4, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @7, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 3, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %54, %"github.com/goplus/llgo/internal/runtime.String" %92, %"github.com/goplus/llgo/internal/runtime.String" %96, ptr %88, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  ret void

_llgo_9:                                          ; preds = %_llgo_7
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 0
  store ptr %97, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 1
  store i64 0, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 2
  store i64 0, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %104 = getelementptr ptr, ptr %103, i64 0
  store ptr %51, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 0
  store ptr %103, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 1
  store i64 1, ptr %107, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 2
  store i64 1, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, align 8
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %102, %"github.com/goplus/llgo/internal/runtime.Slice" %109, i1 false)
  store ptr %110, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %111 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %112 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %112, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %50, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %112, i32 0, i32 1
  store ptr %111, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %112, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %112, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %116, align 8
  %117 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %112, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %118, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %50, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %118, i32 0, i32 1
  store ptr %111, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %118, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %118, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb", ptr %122, align 8
  %123 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %118, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %125 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %124, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %123, ptr %125, align 8
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, i32 0, i32 0
  store ptr %124, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, i32 0, i32 1
  store i64 1, ptr %128, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, i32 0, i32 2
  store i64 1, ptr %129, align 4
  %130 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %132 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %131, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %117, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 0
  store ptr %131, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 1
  store i64 1, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 2
  store i64 1, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 0
  store ptr @4, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 1
  store i64 38, ptr %140, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %138, align 8
  %142 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 0
  store ptr @5, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 1
  store i64 3, ptr %144, align 4
  %145 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %142, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %141, %"github.com/goplus/llgo/internal/runtime.String" %145, ptr %46, %"github.com/goplus/llgo/internal/runtime.Slice" %130, %"github.com/goplus/llgo/internal/runtime.Slice" %137)
  br label %_llgo_8
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

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
