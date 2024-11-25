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
  %1 = load ptr, ptr @_llgo_Pointer, align 8
  %2 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %3 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %3)
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.main.demo, ptr null }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %5, ptr %4, 1
  %7 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %7)
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %0, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, ptr %8, 1
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %6, 0
  %12 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %6, 1
  %15 = load { ptr, ptr }, ptr %14, align 8
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 0
  %17 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %19 = load ptr, ptr @_llgo_string, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 21 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %19, 0
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %21, ptr %20, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %22)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 1
  %24 = load { ptr, ptr }, ptr %23, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface" %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface" %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %25 = extractvalue { ptr, ptr } %0, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %26 = extractvalue { ptr, ptr } %15, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %27 = extractvalue { ptr, ptr } %24, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %28 = call ptr @main.closurePtr(%"github.com/goplus/llgo/internal/runtime.eface" %6)
  %29 = call ptr @main.closurePtr(%"github.com/goplus/llgo/internal/runtime.eface" %10)
  %30 = icmp eq ptr %28, %29
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 21 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %31, 0
  %34 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %33, ptr %32, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %34)
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
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 })
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
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @main.check({ ptr, ptr } { ptr @__llgo_stub.main.demo, ptr null })
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
  %8 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %8, i64 1, 1
  %10 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %9, i64 1, 2
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %12, i64 0, 1
  %14 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %13, i64 0, 2
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %10, %"github.com/goplus/llgo/internal/runtime.Slice" %14, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %15)
  store ptr %15, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %16 = load ptr, ptr @_llgo_Pointer, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %18 = getelementptr ptr, ptr %17, i64 0
  store ptr %16, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %20, i64 1, 2
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %23 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %23, i64 0, 1
  %25 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %24, i64 0, 2
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %21, %"github.com/goplus/llgo/internal/runtime.Slice" %25, i1 false)
  %27 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 1 }, ptr %26, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %29 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, ptr %28, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %31 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %30, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %27, ptr %31, align 8
  %32 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %30, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %29, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %30, 0
  %34 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %33, i64 2, 1
  %35 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %34, i64 2, 2
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %35)
  store ptr %36, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %39, ptr @_llgo_string, align 8
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

declare void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintEface"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.init"()
