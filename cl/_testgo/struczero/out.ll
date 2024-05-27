; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/cl/internal/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.bar = type { ptr, float }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global ptr null
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo" = linkonce global ptr null
@_llgo_main.bar = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [7 x i8] c"notOk:\00", align 1
@"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs" = global ptr null
@1 = private unnamed_addr constant [3 x i8] c"Pb\00", align 1
@"_llgo_func$9WyRPk13jhLNuX5vkY3DFEfqvowhmGCLb2eJ8uGOVkM" = linkonce global ptr null
@2 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/internal/foo\00", align 1
@3 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/internal/foo.Foo\00", align 1
@"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo" = global ptr null
@4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"main.bar\00", align 1
@6 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@"*_llgo_byte" = linkonce global ptr null
@7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@8 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@10 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@11 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@13 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@15 = private unnamed_addr constant [5 x i8] c"main\00", align 1

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
  call void @"main.init$abi3"()
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
  store ptr @0, ptr %13, align 8
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
  %29 = call ptr @"(github.com/goplus/llgo/cl/internal/foo.Foo).Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo" %28)
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

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"(github.com/goplus/llgo/cl/internal/foo.Foo).Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo")

define void @"main.init$abi"() {
_llgo_0:
  call void @"main.init$abi2"()
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = load ptr, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @1, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 2, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = load ptr, ptr @"_llgo_func$9WyRPk13jhLNuX5vkY3DFEfqvowhmGCLb2eJ8uGOVkM", align 8
  %8 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %8, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %8, i32 0, i32 2
  store ptr @"(github.com/goplus/llgo/cl/internal/foo.Foo).Pb", ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %8, i32 0, i32 3
  store ptr @"(github.com/goplus/llgo/cl/internal/foo.Foo).Pb", ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %8, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %15 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %14, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %13, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 1, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 1, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @2, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 38, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @3, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 42, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String" %24, %"github.com/goplus/llgo/internal/runtime.String" %28, ptr %2, %"github.com/goplus/llgo/internal/runtime.Slice" %20)
  store ptr %29, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %30 = load ptr, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 1
  store i64 0, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 2
  store i64 0, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, align 8
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @4, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 4, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @5, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 8, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String" %40, %"github.com/goplus/llgo/internal/runtime.String" %44, ptr %30, %"github.com/goplus/llgo/internal/runtime.Slice" %36)
  store ptr %45, ptr @_llgo_main.bar, align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice")

define void @"main.init$abi2"() {
_llgo_0:
  call void @"main.init$abi3"()
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @6, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 2, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = load ptr, ptr @"*_llgo_byte", align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @7, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 0, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %9 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3, ptr %4, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %8, i1 false)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 1, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @9, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 0, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %13, ptr %14, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %18, i1 false)
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @10, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 4, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %25 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %24, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %9, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %24, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %19, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 0
  store ptr %24, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 1
  store i64 2, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 2
  store i64 2, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %23, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %31)
  store ptr %32, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  %33 = load ptr, ptr @"_llgo_func$9WyRPk13jhLNuX5vkY3DFEfqvowhmGCLb2eJ8uGOVkM", align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %35 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %37 = getelementptr ptr, ptr %36, i64 0
  store ptr %35, ptr %37, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %38, i32 0, i32 0
  store ptr %36, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %38, i32 0, i32 1
  store i64 1, ptr %40, align 4
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %38, i32 0, i32 2
  store i64 1, ptr %41, align 4
  %42 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %38, align 8
  %43 = load ptr, ptr @"*_llgo_byte", align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %45 = getelementptr ptr, ptr %44, i64 0
  store ptr %43, ptr %45, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 0
  store ptr %44, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 1
  store i64 1, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 2
  store i64 1, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %42, %"github.com/goplus/llgo/internal/runtime.Slice" %50, i1 false)
  store ptr %51, ptr @"_llgo_func$9WyRPk13jhLNuX5vkY3DFEfqvowhmGCLb2eJ8uGOVkM", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @11, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 2, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = load ptr, ptr @"*_llgo_byte", align 8
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 0
  store ptr @12, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 1
  store i64 0, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %57, align 8
  %61 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %55, ptr %56, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %60, i1 false)
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @13, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 1, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 0
  store ptr @14, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 1
  store i64 0, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %67, align 8
  %71 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %65, ptr %66, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %70, i1 false)
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @15, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 4, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %77 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %76, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %61, ptr %77, align 8
  %78 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %76, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %71, ptr %78, align 8
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 0
  store ptr %76, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 1
  store i64 2, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 2
  store i64 2, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, align 8
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %75, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %83)
  store ptr %84, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

define void @"main.init$abi3"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_byte", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2)
  store ptr %3, ptr @"*_llgo_byte", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)
