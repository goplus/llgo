; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.rtype = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@_llgo_Pointer = linkonce global ptr null, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = linkonce global ptr null, align 8
@"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"f", align 1
@1 = private unnamed_addr constant [4 x i8] c"data", align 1
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"demo", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @main.check({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr @__llgo_stub.main.demo, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load { ptr, ptr }, ptr %1, align 8
  %5 = load ptr, ptr @_llgo_Pointer, align 8
  %6 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %7 = load ptr, ptr @_llgo_Pointer, align 8
  %8 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %4, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  %14 = load ptr, ptr @_llgo_Pointer, align 8
  %15 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %16 = load ptr, ptr @_llgo_Pointer, align 8
  %17 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %0, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %19, i32 0, i32 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %19, i32 0, i32 1
  store ptr %18, ptr %21, align 8
  %22 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %19, align 8
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %13, 0
  %24 = load ptr, ptr @_llgo_Pointer, align 8
  %25 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %26 = load ptr, ptr @_llgo_Pointer, align 8
  %27 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %13, 1
  %30 = load { ptr, ptr }, ptr %29, align 8
  %31 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %22, 0
  %32 = load ptr, ptr @_llgo_Pointer, align 8
  %33 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %34 = load ptr, ptr @_llgo_Pointer, align 8
  %35 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @3, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 21, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = load ptr, ptr @_llgo_string, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 0
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 1
  store ptr %42, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %46)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %22, 1
  %48 = load { ptr, ptr }, ptr %47, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %49 = extractvalue { ptr, ptr } %0, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %49)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %50 = extractvalue { ptr, ptr } %30, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %50)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %51 = extractvalue { ptr, ptr } %48, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %52 = call ptr @main.closurePtr(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  %53 = call ptr @main.closurePtr(%"github.com/goplus/llgo/internal/runtime.eface" %22)
  %54 = icmp eq ptr %52, %53
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %54)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @3, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 21, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = load ptr, ptr @_llgo_string, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %58, ptr %60, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 0
  store ptr %59, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 1
  store ptr %60, ptr %63, align 8
  %64 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %64)
  unreachable
}

define ptr @main.closurePtr(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.rtype, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

define void @main.demo() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @4, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 4, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @5, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = alloca { ptr, ptr }, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 0
  store ptr @__llgo_stub.main.demo, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %6, i32 0, i32 1
  store ptr null, ptr %8, align 8
  %9 = load { ptr, ptr }, ptr %6, align 8
  call void @main.check({ ptr, ptr } %9)
  ret i32 0
}

define linkonce void @__llgo_stub.main.demo(ptr %0) {
_llgo_0:
  tail call void @main.demo()
  ret void
}

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  %4 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %7 = getelementptr ptr, ptr %6, i64 0
  store ptr %3, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 1
  store i64 1, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 2
  store i64 1, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 1
  store i64 0, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 2
  store i64 0, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %12, %"github.com/goplus/llgo/internal/runtime.Slice" %18, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %19)
  store ptr %19, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %20 = load ptr, ptr @_llgo_Pointer, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @0, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 1, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %30 = getelementptr ptr, ptr %29, i64 0
  store ptr %20, ptr %30, align 8
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 0
  store ptr %29, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 1
  store i64 1, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 2
  store i64 1, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, i32 0, i32 0
  store ptr %36, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, i32 0, i32 1
  store i64 0, ptr %39, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, i32 0, i32 2
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %35, %"github.com/goplus/llgo/internal/runtime.Slice" %41, i1 false)
  %43 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %24, ptr %42, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %28, i1 false)
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 0
  store ptr @1, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 1
  store i64 4, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr null, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 0, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %53 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %47, ptr %52, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %51, i1 false)
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @2, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 4, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %59 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %58, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %43, ptr %59, align 8
  %60 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %58, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %53, ptr %60, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, i32 0, i32 0
  store ptr %58, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, i32 0, i32 1
  store i64 2, ptr %63, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, i32 0, i32 2
  store i64 2, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %57, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %65)
  store ptr %66, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %69, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.init"()
