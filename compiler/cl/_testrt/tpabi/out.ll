; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/tpabi'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/tpabi"

%"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"a", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/compiler/cl/_testrt/tpabi", align 1
@2 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"m", align 1
@4 = private unnamed_addr constant [1 x i8] c"n", align 1
@5 = private unnamed_addr constant [4 x i8] c"Demo", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [4 x i8] c"Info", align 1
@7 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"*_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" = linkonce global ptr null, align 8
@"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs" = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 24, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %1, align 8
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %0, align 8
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 0
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 1
  %12 = load %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %11, align 8
  %13 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" %12, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %14, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %15, align 8
  store i64 100, ptr %16, align 4
  %17 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  %18 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %19 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %19, ptr %17)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %14, 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %22)
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, 0
  %25 = getelementptr ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = insertvalue { ptr, ptr } undef, ptr %26, 0
  %28 = insertvalue { ptr, ptr } %27, ptr %23, 1
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  call void %30(ptr %29)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %32 = getelementptr inbounds i64, ptr %31, i64 0
  %33 = getelementptr inbounds i64, ptr %31, i64 1
  %34 = getelementptr inbounds i64, ptr %31, i64 2
  %35 = getelementptr inbounds i64, ptr %31, i64 3
  store i64 1, ptr %32, align 4
  store i64 2, ptr %33, align 4
  store i64 3, ptr %34, align 4
  store i64 4, ptr %35, align 4
  %36 = getelementptr [4 x i64], ptr %31, i64 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %37 = getelementptr [4 x i64], ptr %31, i64 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable
}

define linkonce void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int].Info"(%"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Demo"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Info"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", ptr %0, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int].Info"(%"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]" %1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, i64 25, i64 24, i64 1, i64 2)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
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
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  store ptr %21, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  %22 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.struct$A2OTYqQyUOqOQ-i_F5iXeAKWtxeWGEuyeN7HCfULCDk", align 8
  br i1 %2, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %23 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, i64 25, i64 24, i64 1, i64 2)
  %26 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 0, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 0, 2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 0, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 0, 2
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %36)
  store ptr %36, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %37 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %37, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Demo", 2
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Demo", 3
  %41 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %41, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Info", 2
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Info", 3
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %41, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.(*T[string,int]).Info", 2
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int].Info", 3
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %49 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %48, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %47, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 1, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 1, 2
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %54 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %53, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %53, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 2, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %22, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %59)
  store ptr %59, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testrt/tpabi.T[string,int]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %60 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %61 = load ptr, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr undef }, ptr %60, 1
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %65 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %64, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %63, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 2
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68)
  store ptr %69, ptr @"_llgo_iface$BP0p_lUsEd-IbbtJVukGmgrdQkqzcoYzSiwgUvgFvUs", align 8
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
