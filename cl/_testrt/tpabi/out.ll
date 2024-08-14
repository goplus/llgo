; ModuleID = 'main'
source_filename = "main"

%"main.T[string,int]" = type { %"github.com/goplus/llgo/internal/runtime.String", i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@"_llgo_main.T[string,int]" = linkonce global ptr null, align 8
@"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"m", align 1
@2 = private unnamed_addr constant [1 x i8] c"n", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [4 x i8] c"Info", align 1
@6 = private unnamed_addr constant [13 x i8] c"T[string,int]", align 1
@7 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_main.T[string,int]" = linkonce global ptr null, align 8
@"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" = linkonce global ptr null, align 8

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
  %2 = alloca %"main.T[string,int]", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 24)
  %4 = getelementptr inbounds %"main.T[string,int]", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"main.T[string,int]", ptr %3, i32 0, i32 1
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @0, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 1, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %9, ptr %4, align 8
  store i64 1, ptr %5, align 4
  %10 = load %"main.T[string,int]", ptr %3, align 8
  %11 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store %"main.T[string,int]" %10, ptr %12, align 8
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 0
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 1
  store ptr %12, ptr %15, align 8
  %16 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, align 8
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %16, 0
  %18 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %16, 1
  %21 = load %"main.T[string,int]", ptr %20, align 8
  %22 = extractvalue %"main.T[string,int]" %21, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %24 = getelementptr inbounds %"main.T[string,int]", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"main.T[string,int]", ptr %23, i32 0, i32 1
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @8, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 5, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %29, ptr %24, align 8
  store i64 100, ptr %25, align 4
  %30 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %31 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %31, ptr %30)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, i32 0, i32 1
  store ptr %23, ptr %35, align 8
  %36 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %36)
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %36, 0
  %39 = getelementptr ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = alloca { ptr, ptr }, align 8
  %42 = getelementptr inbounds { ptr, ptr }, ptr %41, i32 0, i32 0
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds { ptr, ptr }, ptr %41, i32 0, i32 1
  store ptr %37, ptr %43, align 8
  %44 = load { ptr, ptr }, ptr %41, align 8
  %45 = extractvalue { ptr, ptr } %44, 1
  %46 = extractvalue { ptr, ptr } %44, 0
  call void %46(ptr %45)
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %48 = getelementptr inbounds i64, ptr %47, i64 0
  %49 = getelementptr inbounds i64, ptr %47, i64 1
  %50 = getelementptr inbounds i64, ptr %47, i64 2
  %51 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 1, ptr %48, align 4
  store i64 2, ptr %49, align 4
  store i64 3, ptr %50, align 4
  store i64 4, ptr %51, align 4
  %52 = getelementptr [4 x i64], ptr %47, i64 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %52)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %53 = getelementptr [4 x i64], ptr %47, i64 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @7, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 21, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  %58 = load ptr, ptr @_llgo_string, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %57, ptr %59, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, i32 0, i32 0
  store ptr %58, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, i32 0, i32 1
  store ptr %59, ptr %62, align 8
  %63 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %60, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %63)
  unreachable
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

define linkonce void @"main.T[string,int].Info"(%"main.T[string,int]" %0) {
_llgo_0:
  %1 = alloca %"main.T[string,int]", align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 24)
  store %"main.T[string,int]" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"main.T[string,int]", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %5 = getelementptr inbounds %"main.T[string,int]", ptr %2, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"main.(*T[string,int]).Demo"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.T[string,int]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %3 = getelementptr inbounds %"main.T[string,int]", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.(*T[string,int]).Info"(ptr %0) {
_llgo_0:
  %1 = load %"main.T[string,int]", ptr %0, align 8
  call void @"main.T[string,int].Info"(%"main.T[string,int]" %1)
  ret void
}

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 24, i64 1, i64 2)
  %1 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_main.T[string,int]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @1, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %12 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %6, ptr %11, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @2, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 1, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %22 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %16, ptr %21, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %20, i1 false)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr @3, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 4, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %28 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %27, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %12, ptr %28, align 8
  %29 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %27, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %22, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 0
  store ptr %27, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 1
  store i64 2, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 2
  store i64 2, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %26, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %34)
  store ptr %35, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  %36 = load ptr, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @4, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 4, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_2
  %43 = load ptr, ptr @_llgo_string, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_3
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 0
  store ptr %45, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 1
  store i64 0, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 2
  store i64 0, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %52, i32 0, i32 0
  store ptr %51, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %52, i32 0, i32 1
  store i64 0, ptr %54, align 4
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %52, i32 0, i32 2
  store i64 0, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %52, align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %50, %"github.com/goplus/llgo/internal/runtime.Slice" %56, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %57)
  store ptr %57, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %58 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %59 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %59, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %59, i32 0, i32 1
  store ptr %58, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %59, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Demo", ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %59, i32 0, i32 3
  store ptr @"main.(*T[string,int]).Demo", ptr %63, align 8
  %64 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %59, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 0
  store ptr @5, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 1
  store i64 4, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %65, align 8
  %69 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %70 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %68, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 1
  store ptr %69, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Info", ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 3
  store ptr @"main.(*T[string,int]).Info", ptr %74, align 8
  %75 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %70, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %68, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 1
  store ptr %69, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Info", ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 3
  store ptr @"main.T[string,int].Info", ptr %80, align 8
  %81 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %76, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %83 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %82, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %81, ptr %83, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 0
  store ptr %82, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 1
  store i64 1, ptr %86, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 2
  store i64 1, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, align 8
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %90 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %89, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %64, ptr %90, align 8
  %91 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %89, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %75, ptr %91, align 8
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, i32 0, i32 0
  store ptr %89, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, i32 0, i32 1
  store i64 2, ptr %94, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, i32 0, i32 2
  store i64 2, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 0
  store ptr @3, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 1
  store i64 4, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @6, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 13, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %100, %"github.com/goplus/llgo/internal/runtime.String" %104, ptr %36, %"github.com/goplus/llgo/internal/runtime.Slice" %88, %"github.com/goplus/llgo/internal/runtime.Slice" %96)
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_4
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %105, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_4
  %106 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %108)
  store ptr %108, ptr @"*_llgo_main.T[string,int]", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %109 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %110 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 0
  store ptr @4, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 1
  store i64 4, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %112, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %116, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %116, i32 0, i32 1
  store ptr %109, ptr %118, align 8
  %119 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %116, align 8
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %121 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %120, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %119, ptr %121, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 0
  store ptr %120, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 1
  store i64 1, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 2
  store i64 1, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, align 8
  %127 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %127, i32 0, i32 0
  store ptr @3, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %127, i32 0, i32 1
  store i64 4, ptr %129, align 4
  %130 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %127, align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 0
  store ptr null, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 1
  store i64 0, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %131, align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %130, %"github.com/goplus/llgo/internal/runtime.String" %134, %"github.com/goplus/llgo/internal/runtime.Slice" %126)
  store ptr %135, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)
