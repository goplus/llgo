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
@0 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/internal/foo.Foo", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@_llgo_float32 = linkonce global ptr null, align 8
@"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [2 x i8] c"pb", align 1
@2 = private unnamed_addr constant [1 x i8] c"F", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
@6 = private unnamed_addr constant [3 x i8] c"Foo", align 1
@_llgo_main.bar = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [8 x i8] c"main.bar", align 1
@"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [1 x i8] c"f", align 1
@9 = private unnamed_addr constant [3 x i8] c"bar", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@10 = private unnamed_addr constant [6 x i8] c"notOk:", align 1

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
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = call { %main.bar, i1 } @main.Foo(%"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  %4 = extractvalue { %main.bar, i1 } %3, 0
  store %main.bar %4, ptr %2, align 8
  %5 = extractvalue { %main.bar, i1 } %3, 1
  %6 = getelementptr inbounds %main.bar, ptr %2, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %main.bar, ptr %2, i32 0, i32 1
  %9 = load float, ptr %8, align 4
  %10 = xor i1 %5, true
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @10, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 6, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %15 = fpext float %9 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %16 = alloca %"github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  call void @llvm.memset(ptr %16, i8 0, i64 16, i1 false)
  %17 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" zeroinitializer, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %19, i32 0, i32 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %19, i32 0, i32 1
  store ptr %18, ptr %21, align 8
  %22 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %19, align 8
  %23 = call { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } @main.Bar(%"github.com/goplus/llgo/internal/runtime.eface" %22)
  %24 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %23, 0
  store %"github.com/goplus/llgo/cl/internal/foo.Foo" %24, ptr %16, align 8
  %25 = extractvalue { %"github.com/goplus/llgo/cl/internal/foo.Foo", i1 } %23, 1
  %26 = load %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %16, align 8
  %27 = call ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo" %26)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/internal/foo.Foo", ptr %16, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %30 = fpext float %29 to double
  call void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 42, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 16, i64 1, i64 1)
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %4, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Foo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_byte, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %9, ptr @_llgo_byte, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @"*_llgo_byte", align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %12)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"*_llgo_byte", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = load ptr, ptr @"*_llgo_byte", align 8
  %15 = load ptr, ptr @_llgo_float32, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  store ptr %17, ptr @_llgo_float32, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %18 = load ptr, ptr @_llgo_float32, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @1, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 2, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 0, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %27)
  %29 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %22, ptr %28, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %26, i1 false)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @2, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 1, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  %39 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %33, ptr %38, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %37, i1 false)
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @3, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 4, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %45 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %44, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %29, ptr %45, align 8
  %46 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %44, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %39, ptr %46, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 0
  store ptr %44, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 1
  store i64 2, ptr %49, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 2
  store i64 2, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %43, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %51)
  store ptr %52, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  %53 = load ptr, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  br i1 %6, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @4, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 2, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  %58 = load ptr, ptr @"*_llgo_byte", align 8
  %59 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr @7, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 8, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %64, i64 25, i64 16, i64 0, i64 0)
  store ptr %65, ptr @_llgo_main.bar, align 8
  %66 = load ptr, ptr @"*_llgo_byte", align 8
  %67 = load ptr, ptr @_llgo_float32, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 0
  store ptr @1, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 1
  store i64 2, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %68, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr null, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 0, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %76)
  %78 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %71, ptr %77, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %75, i1 false)
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 0
  store ptr @8, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 1
  store i64 1, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %79, align 8
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr null, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 0, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  %88 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %82, ptr %87, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %86, i1 false)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @3, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 4, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %94 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %93, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %78, ptr %94, align 8
  %95 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %93, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %88, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 0
  store ptr %93, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 1
  store i64 2, ptr %98, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 2
  store i64 2, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %92, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %100)
  store ptr %101, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %102 = load ptr, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 0
  store ptr @3, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 1
  store i64 4, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %103, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 0
  store ptr @9, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 1
  store i64 3, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %107, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %65, %"github.com/goplus/llgo/internal/runtime.String" %106, %"github.com/goplus/llgo/internal/runtime.String" %110, ptr %102, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  ret void

_llgo_11:                                         ; preds = %_llgo_9
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 0
  store ptr %111, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 1
  store i64 0, ptr %114, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 2
  store i64 0, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, align 8
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %118 = getelementptr ptr, ptr %117, i64 0
  store ptr %58, ptr %118, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 0
  store ptr %117, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 1
  store i64 1, ptr %121, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 2
  store i64 1, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %116, %"github.com/goplus/llgo/internal/runtime.Slice" %123, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %124)
  store ptr %124, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %125 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %126 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %57, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 1
  store ptr %125, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %126, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %132, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %57, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %132, i32 0, i32 1
  store ptr %125, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %132, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %132, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb", ptr %136, align 8
  %137 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %132, align 8
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %139 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %138, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %137, ptr %139, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 0
  store ptr %138, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 1
  store i64 1, ptr %142, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 2
  store i64 1, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %146 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %131, ptr %146, align 8
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, i32 0, i32 0
  store ptr %145, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, i32 0, i32 1
  store i64 1, ptr %149, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, i32 0, i32 2
  store i64 1, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @5, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 38, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @6, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 3, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %155, %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %53, %"github.com/goplus/llgo/internal/runtime.Slice" %144, %"github.com/goplus/llgo/internal/runtime.Slice" %151)
  br label %_llgo_10
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb"(ptr)

declare ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/internal/foo.Foo")

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
