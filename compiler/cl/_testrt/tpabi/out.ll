; ModuleID = 'main'
source_filename = "main"

%"main.T[string,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@"_llgo_main.T[string,int]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"m", align 1
@4 = private unnamed_addr constant [1 x i8] c"n", align 1
@5 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@6 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_main.T[string,int]" = linkonce global ptr null, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [4 x i8] c"Demo", align 1

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = alloca %"main.T[string,int]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 24, i1 false)
  %3 = getelementptr inbounds %"main.T[string,int]", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"main.T[string,int]", ptr %2, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %3, align 8
  store i64 1, ptr %4, align 4
  %5 = load %"main.T[string,int]", ptr %2, align 8
  %6 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"main.T[string,int]" %5, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 0
  %11 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 1
  %14 = load %"main.T[string,int]", ptr %13, align 8
  %15 = extractvalue %"main.T[string,int]" %14, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %17 = getelementptr inbounds %"main.T[string,int]", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %"main.T[string,int]", ptr %16, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %17, align 8
  store i64 100, ptr %18, align 4
  %19 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %20 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %21 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %21, ptr %19)
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %16, 1
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 0
  %27 = getelementptr ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = insertvalue { ptr, ptr } undef, ptr %28, 0
  %30 = insertvalue { ptr, ptr } %29, ptr %25, 1
  %31 = extractvalue { ptr, ptr } %30, 1
  %32 = extractvalue { ptr, ptr } %30, 0
  call void %32(ptr %31)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %34 = getelementptr inbounds i64, ptr %33, i64 0
  %35 = getelementptr inbounds i64, ptr %33, i64 1
  %36 = getelementptr inbounds i64, ptr %33, i64 2
  %37 = getelementptr inbounds i64, ptr %33, i64 3
  store i64 1, ptr %34, align 4
  store i64 2, ptr %35, align 4
  store i64 3, ptr %36, align 4
  store i64 4, ptr %37, align 4
  %38 = getelementptr [4 x i64], ptr %33, i64 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = getelementptr [4 x i64], ptr %33, i64 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 21 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  unreachable
}

define linkonce void @"main.T[string,int].Info"(%"main.T[string,int]" %0) {
_llgo_0:
  %1 = alloca %"main.T[string,int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  store %"main.T[string,int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"main.T[string,int]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %4 = getelementptr inbounds %"main.T[string,int]", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"main.(*T[string,int]).Demo"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.T[string,int]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = getelementptr inbounds %"main.T[string,int]", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.(*T[string,int]).Info"(ptr %0) {
_llgo_0:
  %1 = load %"main.T[string,int]", ptr %0, align 8
  call void @"main.T[string,int].Info"(%"main.T[string,int]" %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, i64 25, i64 24, i64 1, i64 2)
  %1 = load ptr, ptr @"_llgo_main.T[string,int]", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_main.T[string,int]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %9, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %13, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 2
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  store ptr %21, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  %22 = load ptr, ptr @"main.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  br i1 %2, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 0, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %22, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, i64 25, i64 24, i64 1, i64 2)
  %28 = load ptr, ptr @"*_llgo_main.T[string,int]", align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @"*_llgo_main.T[string,int]", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %31 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 0, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 0, 2
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 0, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 0, 2
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %41)
  store ptr %41, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %42 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %43 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr undef }, ptr %42, 1
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %47 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %46, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %45, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 2
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  store ptr %51, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
