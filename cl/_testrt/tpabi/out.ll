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
@"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"m", align 1
@3 = private unnamed_addr constant [1 x i8] c"n", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [4 x i8] c"Info", align 1
@7 = private unnamed_addr constant [13 x i8] c"T[string,int]", align 1
@8 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_string = linkonce global ptr null, align 8
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
  %30 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %30, ptr %29)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, i32 0, i32 1
  store ptr %22, ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %32, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %35)
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %35, 0
  %38 = getelementptr ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  %40 = alloca { ptr, ptr }, align 8
  %41 = getelementptr inbounds { ptr, ptr }, ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, ptr }, ptr %40, i32 0, i32 1
  store ptr %36, ptr %42, align 8
  %43 = load { ptr, ptr }, ptr %40, align 8
  %44 = extractvalue { ptr, ptr } %43, 1
  %45 = extractvalue { ptr, ptr } %43, 0
  call void %45(ptr %44)
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %47 = getelementptr inbounds i64, ptr %46, i64 0
  %48 = getelementptr inbounds i64, ptr %46, i64 1
  %49 = getelementptr inbounds i64, ptr %46, i64 2
  %50 = getelementptr inbounds i64, ptr %46, i64 3
  store i64 1, ptr %47, align 4
  store i64 2, ptr %48, align 4
  store i64 3, ptr %49, align 4
  store i64 4, ptr %50, align 4
  %51 = getelementptr [4 x i64], ptr %46, i64 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %52 = getelementptr [4 x i64], ptr %46, i64 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %52)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @8, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 21, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %57 = load ptr, ptr @_llgo_string, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %56, ptr %58, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %59, i32 0, i32 0
  store ptr %57, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %59, i32 0, i32 1
  store ptr %58, ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %59, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %62)
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
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @2, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %16 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %10, ptr %15, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %14, i1 false)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @3, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 1, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 0, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %26 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %20, ptr %25, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %24, i1 false)
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 0
  store ptr @4, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 1
  store i64 4, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %32 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %31, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %16, ptr %32, align 8
  %33 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %31, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %26, ptr %33, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 0
  store ptr %31, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 1
  store i64 2, ptr %36, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 2
  store i64 2, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %30, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %38)
  store ptr %39, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  %40 = load ptr, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @5, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 4, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_2
  %47 = load ptr, ptr @_llgo_string, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_3
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 0
  store ptr %49, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 1
  store i64 0, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 2
  store i64 0, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %55, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 0, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 0, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %54, %"github.com/goplus/llgo/internal/runtime.Slice" %60, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %61)
  store ptr %61, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %62 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %63 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %44, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 1
  store ptr %62, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Demo", ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 3
  store ptr @"main.(*T[string,int]).Demo", ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %63, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 0
  store ptr @6, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %69, i32 0, i32 1
  store i64 4, ptr %71, align 4
  %72 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %69, align 8
  %73 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %74 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %74, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %72, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %74, i32 0, i32 1
  store ptr %73, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %74, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Info", ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %74, i32 0, i32 3
  store ptr @"main.(*T[string,int]).Info", ptr %78, align 8
  %79 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %74, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %80, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %72, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %80, i32 0, i32 1
  store ptr %73, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %80, i32 0, i32 2
  store ptr @"main.(*T[string,int]).Info", ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %80, i32 0, i32 3
  store ptr @"main.T[string,int].Info", ptr %84, align 8
  %85 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %80, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %87 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %86, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %85, ptr %87, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 0
  store ptr %86, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 1
  store i64 1, ptr %90, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 2
  store i64 1, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %94 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %68, ptr %94, align 8
  %95 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %93, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %79, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 0
  store ptr %93, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 1
  store i64 2, ptr %98, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 2
  store i64 2, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @4, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 4, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 0
  store ptr @7, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 1
  store i64 13, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %105, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %104, %"github.com/goplus/llgo/internal/runtime.String" %108, ptr %40, %"github.com/goplus/llgo/internal/runtime.Slice" %92, %"github.com/goplus/llgo/internal/runtime.Slice" %100)
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_4
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %109, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_4
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr @1, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 19, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %113, i64 25, i64 24, i64 1, i64 2)
  %115 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %114)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %117)
  store ptr %117, ptr @"*_llgo_main.T[string,int]", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %118 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %119 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 0
  store ptr @5, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 1
  store i64 4, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %121, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %125, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %124, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %125, i32 0, i32 1
  store ptr %118, ptr %127, align 8
  %128 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %125, align 8
  %129 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %130 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %129, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %128, ptr %130, align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, i32 0, i32 0
  store ptr %129, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, i32 0, i32 1
  store i64 1, ptr %133, align 4
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, i32 0, i32 2
  store i64 1, ptr %134, align 4
  %135 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %131, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 0
  store ptr @4, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 1
  store i64 4, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %136, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr null, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 0, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %139, %"github.com/goplus/llgo/internal/runtime.String" %143, %"github.com/goplus/llgo/internal/runtime.Slice" %135)
  store ptr %144, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
