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
  %10 = load ptr, ptr @_llgo_byte, align 8
  %11 = load ptr, ptr @"*_llgo_byte", align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %13)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %14)
  store ptr %14, ptr @"*_llgo_byte", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %15 = load ptr, ptr @"*_llgo_byte", align 8
  %16 = load ptr, ptr @_llgo_float32, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  store ptr %18, ptr @_llgo_float32, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %19 = load ptr, ptr @_llgo_float32, align 8
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @1, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 2, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 0, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %28)
  %30 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %23, ptr %29, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %27, i1 false)
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 0
  store ptr @2, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 1
  store i64 1, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 0, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  %40 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %34, ptr %39, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %38, i1 false)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @3, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 4, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %46 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %45, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %30, ptr %46, align 8
  %47 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %45, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %40, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %45, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 2, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 2, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %44, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %52)
  store ptr %53, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  %54 = load ptr, ptr @"main.struct$qQwZyFy_4JRalRxVVsVD8R09X5t58tWjTrtJPtHbEjs", align 8
  br i1 %6, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @4, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 2, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = load ptr, ptr @"*_llgo_byte", align 8
  %60 = load ptr, ptr @"*_llgo_byte", align 8
  %61 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @7, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 8, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %66, i64 25, i64 16, i64 0, i64 0)
  store ptr %67, ptr @_llgo_main.bar, align 8
  %68 = load ptr, ptr @"*_llgo_byte", align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 0
  store ptr @1, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 1
  store i64 2, ptr %71, align 4
  %72 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %69, align 8
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 0
  store ptr null, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 1
  store i64 0, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %73, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %77)
  %79 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %72, ptr %78, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %76, i1 false)
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr @8, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 1, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr null, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 0, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  %89 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %83, ptr %88, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %87, i1 false)
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @3, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 4, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %95 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %94, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %79, ptr %95, align 8
  %96 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %94, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %89, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 0
  store ptr %94, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 1
  store i64 2, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 2
  store i64 2, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %93, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %101)
  store ptr %102, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %103 = load ptr, ptr @"main.struct$Ci43nzKYkRLddRL_N4mkykxLXfJlqJGS5n04LKThPNo", align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr @3, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 4, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr @9, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 3, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %67, %"github.com/goplus/llgo/internal/runtime.String" %107, %"github.com/goplus/llgo/internal/runtime.String" %111, ptr %103, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  ret void

_llgo_11:                                         ; preds = %_llgo_9
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 0
  store ptr %112, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 1
  store i64 0, ptr %115, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 2
  store i64 0, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, align 8
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %119 = getelementptr ptr, ptr %118, i64 0
  store ptr %60, ptr %119, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 0
  store ptr %118, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 1
  store i64 1, ptr %122, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 2
  store i64 1, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, align 8
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %117, %"github.com/goplus/llgo/internal/runtime.Slice" %124, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %125)
  store ptr %125, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %126 = load ptr, ptr @"_llgo_func$NfGSLZ1QiKRoFkKeqYSXE5hUU5bpeteSJKrbMNUzYRE", align 8
  %127 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %127, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %58, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %127, i32 0, i32 1
  store ptr %126, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %127, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %127, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %131, align 8
  %132 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %127, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %133, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %58, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %133, i32 0, i32 1
  store ptr %126, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %133, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Foo).Pb", ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %133, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.Foo.Pb", ptr %137, align 8
  %138 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %133, align 8
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %140 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %139, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %138, ptr %140, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %141, i32 0, i32 0
  store ptr %139, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %141, i32 0, i32 1
  store i64 1, ptr %143, align 4
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %141, i32 0, i32 2
  store i64 1, ptr %144, align 4
  %145 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %141, align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %147 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %146, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %132, ptr %147, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, i32 0, i32 0
  store ptr %146, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, i32 0, i32 1
  store i64 1, ptr %150, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, i32 0, i32 2
  store i64 1, ptr %151, align 4
  %152 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, align 8
  %153 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %153, i32 0, i32 0
  store ptr @5, ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %153, i32 0, i32 1
  store i64 38, ptr %155, align 4
  %156 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %153, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr @6, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 3, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %156, %"github.com/goplus/llgo/internal/runtime.String" %160, ptr %54, %"github.com/goplus/llgo/internal/runtime.Slice" %145, %"github.com/goplus/llgo/internal/runtime.Slice" %152)
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
