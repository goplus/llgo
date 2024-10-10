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
@1 = private unnamed_addr constant [19 x i8] c"main.T[string, int]", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"m", align 1
@3 = private unnamed_addr constant [1 x i8] c"n", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [4 x i8] c"Info", align 1
@7 = private unnamed_addr constant [13 x i8] c"T[string,int]", align 1
@8 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@9 = private unnamed_addr constant [5 x i8] c"hello", align 1
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
  call void @llvm.memset(ptr %2, i8 0, i64 24, i1 false)
  %3 = getelementptr inbounds %"main.T[string,int]", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"main.T[string,int]", ptr %2, i32 0, i32 1
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @0, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 1, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %8, ptr %3, align 8
  store i64 1, ptr %4, align 4
  %9 = load %"main.T[string,int]", ptr %2, align 8
  %10 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store %"main.T[string,int]" %9, ptr %11, align 8
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 0
  store ptr %10, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 1
  store ptr %11, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, align 8
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %15, 0
  %17 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %15, 1
  %20 = load %"main.T[string,int]", ptr %19, align 8
  %21 = extractvalue %"main.T[string,int]" %20, 0
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %23 = getelementptr inbounds %"main.T[string,int]", ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds %"main.T[string,int]", ptr %22, i32 0, i32 1
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @9, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 5, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %28, ptr %23, align 8
  store i64 100, ptr %24, align 4
  %29 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %30 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %31 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %31, ptr %29)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %33, i32 0, i32 1
  store ptr %22, ptr %35, align 8
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
  store ptr @8, ptr %55, align 8
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

define linkonce void @"main.T[string,int].Info"(%"main.T[string,int]" %0) {
_llgo_0:
  %1 = alloca %"main.T[string,int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  store %"main.T[string,int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"main.T[string,int]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %4 = getelementptr inbounds %"main.T[string,int]", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %5)
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

declare void @"github.com/goplus/llgo/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @1, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 19, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 24, i64 1, i64 2)
  %5 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %4, ptr @"_llgo_main.T[string,int]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %9, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %13, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = load ptr, ptr @_llgo_int, align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @2, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 1, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 0, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %24 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %18, ptr %23, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %22, i1 false)
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @3, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 1, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %34 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %28, ptr %33, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %32, i1 false)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @4, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 4, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %40 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %39, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %24, ptr %40, align 8
  %41 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %39, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %34, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %39, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 2, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 2, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %38, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  store ptr %47, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  %48 = load ptr, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  br i1 %6, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 0
  store ptr @5, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 1
  store i64 4, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %49, align 8
  %53 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @1, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 19, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %58, i64 25, i64 24, i64 1, i64 2)
  %60 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 1
  store i64 0, ptr %65, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 2
  store i64 0, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, align 8
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 0
  store ptr %68, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 1
  store i64 0, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 2
  store i64 0, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %67, %"github.com/goplus/llgo/internal/runtime.Slice" %73, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %74)
  store ptr %74, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %75 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %76 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %52, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 1
  store ptr %75, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Demo", ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i32 0, i32 3
  store ptr @"main.(*T[string,int]).Demo", ptr %80, align 8
  %81 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %76, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @6, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 4, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %87 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %87, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %85, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %87, i32 0, i32 1
  store ptr %86, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %87, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Info", ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %87, i32 0, i32 3
  store ptr @"main.(*T[string,int]).Info", ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %87, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %85, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 1
  store ptr %86, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Info", ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i32 0, i32 3
  store ptr @"main.T[string,int].Info", ptr %97, align 8
  %98 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %93, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %100 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %99, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %98, ptr %100, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 0
  store ptr %99, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 1
  store i64 1, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 2
  store i64 1, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, align 8
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %107 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %106, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %81, ptr %107, align 8
  %108 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %106, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %92, ptr %108, align 8
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 0
  store ptr %106, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 1
  store i64 2, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 2
  store i64 2, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @4, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 4, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @7, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 13, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %117, %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %48, %"github.com/goplus/llgo/internal/runtime.Slice" %105, %"github.com/goplus/llgo/internal/runtime.Slice" %113)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %59)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %122)
  store ptr %122, ptr @"*_llgo_main.T[string,int]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %123 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %124 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @5, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 4, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %129, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i32 0, i32 1
  store ptr %123, ptr %132, align 8
  %133 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %135 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %134, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %133, ptr %135, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, i32 0, i32 0
  store ptr %134, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, i32 0, i32 1
  store i64 1, ptr %138, align 4
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, i32 0, i32 2
  store i64 1, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %136, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr @4, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 4, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 0
  store ptr null, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 1
  store i64 0, ptr %147, align 4
  %148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %145, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %144, %"github.com/goplus/llgo/internal/runtime.String" %148, %"github.com/goplus/llgo/internal/runtime.Slice" %140)
  store ptr %149, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
