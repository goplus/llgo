; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpabi'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpabi"

%"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testrt/tpabi.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/tpabi", align 1
@2 = private unnamed_addr constant [13 x i8] c"T[string,int]", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"m", align 1
@4 = private unnamed_addr constant [1 x i8] c"n", align 1
@5 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [4 x i8] c"Info", align 1
@7 = private unnamed_addr constant [83 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testrt/tpabi.T[string, int] failed", align 1
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" = linkonce global ptr null, align 8
@"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testrt/tpabi.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/tpabi.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpabi.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 24, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %1, align 8
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, align 8
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 0
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 1
  %12 = load %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %11, align 8
  %13 = extractvalue %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %12, 0
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %15, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %16, align 8
  store i64 100, ptr %17, align 4
  %18 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  %19 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %20 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %20, ptr %18)
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, ptr %15, 1
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %24, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, 0
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
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 83 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %44, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %44)
  unreachable
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int].Info"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  %2 = load %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %2, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %1, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %7, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Demo"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]" %1, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int].Info"(ptr %2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"github.com/goplus/llgo/cl/_testrt/tpabi.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 13 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 24, i64 1, i64 2)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %7, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = load ptr, ptr @_llgo_int, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %11, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %14 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %14, ptr %15, ptr %13, i64 0, ptr %16, i1 false)
  %17 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %19 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %19, ptr %20, ptr %18, i64 16, ptr %21, i1 false)
  %22 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %17, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %22, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 2, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 2, 2
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %29, i64 24, ptr %30)
  store ptr %31, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  %32 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  br i1 %4, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %33 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 13 }, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %35, ptr %36, i64 25, i64 24, i64 1, i64 2)
  %38 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 0, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 0, 2
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 0, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 0, 2
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, ptr %48, align 8
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, ptr %49, align 8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %48, ptr %49, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %50)
  store ptr %50, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %51 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %51, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Demo", 2
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Demo", 3
  %55 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info", 2
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info", 3
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %55, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.(*T[string,int]).Info", 2
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int].Info", 3
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %63 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %62, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %62, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 1, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 2
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %68 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %67, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr %68, align 8
  %69 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %67, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr %69, align 8
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %67, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 2, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 2, 2
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, ptr %73, align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, ptr %74, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %32, ptr %73, ptr %74)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %75)
  store ptr %75, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpabi.T[string,int]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %76 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %77 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr undef }, ptr %76, 1
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %81 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %80, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %79, ptr %81, align 8
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %80, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 1, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i64 1, 2
  %85 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %85, align 8
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, ptr %86, align 8
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %85, ptr %86)
  store ptr %87, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
