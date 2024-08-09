; ModuleID = 'main'
source_filename = "main"

%"main.T[string, int]" = type { %"github.com/goplus/llgo/internal/runtime.String", i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_main.T[string,int]" = linkonce global ptr null, align 8
@"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"m", align 1
@2 = private unnamed_addr constant [1 x i8] c"n", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [13 x i8] c"T[string,int]", align 1
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"main.T[string, int]", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"main.T[string, int]", ptr %2, i32 0, i32 1
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @0, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 5, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %8, ptr %3, align 8
  store i64 100, ptr %4, align 4
  %9 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %10 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %9)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %2, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %15)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %15, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = alloca { ptr, ptr }, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 1
  store ptr %16, ptr %22, align 8
  %23 = load { ptr, ptr }, ptr %20, align 8
  %24 = extractvalue { ptr, ptr } %23, 1
  %25 = extractvalue { ptr, ptr } %23, 0
  call void %25(ptr %24)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.(*T[string,int]).Demo"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.T[string, int]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %3 = getelementptr inbounds %"main.T[string, int]", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 24, i64 0, i64 1)
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
  %43 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
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
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %66 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %65, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %64, ptr %66, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 0
  store ptr %65, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 1
  store i64 1, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 2
  store i64 1, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @3, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 4, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @5, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 13, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %75, %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %36, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %71)
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_4
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %80)
  store ptr %80, ptr @"*_llgo_main.T[string,int]", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_4
  %81 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %82 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @4, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 4, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %88, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %88, i32 0, i32 1
  store ptr %81, ptr %90, align 8
  %91 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %88, align 8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %93 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %92, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %91, ptr %93, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 0
  store ptr %92, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 1
  store i64 1, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 2
  store i64 1, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 0
  store ptr @3, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 1
  store i64 4, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %99, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 0
  store ptr null, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 1
  store i64 0, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %103, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %102, %"github.com/goplus/llgo/internal/runtime.String" %106, %"github.com/goplus/llgo/internal/runtime.Slice" %98)
  store ptr %107, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
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

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)
