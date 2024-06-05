; ModuleID = 'main'
source_filename = "main"

%main.Game1 = type { ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"*_llgo_main.Game1" = linkonce global ptr null
@_llgo_main.Game1 = linkonce global ptr null
@_llgo_int = linkonce global ptr null
@0 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@1 = private unnamed_addr constant [11 x i8] c"main.Game1\00", align 1
@"*_llgo_main.Game2" = linkonce global ptr null
@_llgo_main.Game2 = linkonce global ptr null
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null
@2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"initGame\00", align 1
@4 = private unnamed_addr constant [14 x i8] c"main.initGame\00", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null
@5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@6 = private unnamed_addr constant [11 x i8] c"main.Game2\00", align 1
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer" = linkonce global ptr null
@7 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@8 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame\00", align 1
@9 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/internal/foo\00", align 1
@10 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/internal/foo.Gamer\00", align 1
@"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = global ptr null
@11 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@12 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@15 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1

define void @main.Game1.Load(%main.Game1 %0) {
_llgo_0:
  %1 = alloca %main.Game1, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 8)
  store %main.Game1 %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.Game1, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load"(ptr %4)
  ret void
}

define void @main.Game1.initGame(%main.Game1 %0) {
_llgo_0:
  %1 = alloca %main.Game1, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 8)
  store %main.Game1 %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.Game1, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame"(ptr %4)
  ret void
}

define void @"main.(*Game1).Load"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.Game1, ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load"(ptr %2)
  ret void
}

define void @"main.(*Game1).initGame"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.Game1, ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame"(ptr %2)
  ret void
}

define void @"main.(*Game2).initGame"(ptr %0) {
_llgo_0:
  ret void
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %main.Game1, ptr %2, i32 0, i32 0
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 0)
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 1
  store ptr %2, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 0)
  %11 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 1
  store ptr %10, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, align 8
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, 0
  %17 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %18 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %17, ptr %16)
  br i1 %18, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %48)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %48, 0
  %21 = getelementptr ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = alloca { ptr, ptr }, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %23, i32 0, i32 1
  store ptr %19, ptr %25, align 8
  %26 = load { ptr, ptr }, ptr %23, align 8
  %27 = extractvalue { ptr, ptr } %26, 1
  %28 = extractvalue { ptr, ptr } %26, 0
  call void %28(ptr %27)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %15, 0
  %30 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %31 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %30, ptr %29)
  br i1 %31, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, 1
  %33 = load ptr, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %33, ptr %16)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i32 0, i32 1
  store ptr %32, ptr %37, align 8
  %38 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, align 8
  %39 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %40 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %38, ptr %40, align 8
  %41 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, i32 0, i32 1
  store i1 true, ptr %41, align 1
  %42 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %43 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %44 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %43, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %44, align 8
  %45 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %43, i32 0, i32 1
  store i1 false, ptr %45, align 1
  %46 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %43, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %47 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %42, %_llgo_3 ], [ %46, %_llgo_4 ]
  %48 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %47, 0
  %49 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %47, 1
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 0
  store ptr @15, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 1
  store i64 2, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %50, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %48)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %49)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br i1 %49, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %54 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %15, 1
  %55 = load ptr, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %55, ptr %29)
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %57, i32 0, i32 0
  store ptr %56, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %57, i32 0, i32 1
  store ptr %54, ptr %59, align 8
  %60 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %57, align 8
  %61 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %62 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %61, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %60, ptr %62, align 8
  %63 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %61, i32 0, i32 1
  store i1 true, ptr %63, align 1
  %64 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %61, align 8
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  %65 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %66 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %65, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %66, align 8
  %67 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %65, i32 0, i32 1
  store i1 false, ptr %67, align 1
  %68 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %65, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %69 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %64, %_llgo_6 ], [ %68, %_llgo_7 ]
  %70 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %69, 0
  %71 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %69, 1
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @16, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 4, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %75)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %71)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load"(ptr)

declare void @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame"(ptr)

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_main.Game1, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 0, i64 0)
  store ptr %2, ptr @_llgo_main.Game1, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_int, align 8
  br i1 %1, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @0, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 4, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @1, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 10, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %10, %"github.com/goplus/llgo/internal/runtime.String" %14, ptr %6, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %15 = load ptr, ptr @_llgo_main.Game1, align 8
  %16 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %15)
  store ptr %18, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %19 = load ptr, ptr @_llgo_main.Game2, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %21, ptr @_llgo_main.Game2, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %22 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 4, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 2
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %27, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %33)
  store ptr %34, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %35 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %20, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr @3, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 8, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @4, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 13, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %_llgo_15, label %_llgo_16

_llgo_14:                                         ; preds = %_llgo_16, %_llgo_12
  %46 = load ptr, ptr @_llgo_main.Game2, align 8
  %47 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_17, label %_llgo_18

_llgo_15:                                         ; preds = %_llgo_13
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
  store ptr %61, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_13
  %62 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %63 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %43, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 1
  store ptr %62, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 2
  store ptr @"main.(*Game2).initGame", ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i32 0, i32 3
  store ptr @"main.(*Game2).initGame", ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %63, align 8
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %70 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %69, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %68, ptr %70, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 0
  store ptr %69, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 1
  store i64 1, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 2
  store i64 1, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @5, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 4, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr @6, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 10, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %21, %"github.com/goplus/llgo/internal/runtime.String" %79, %"github.com/goplus/llgo/internal/runtime.String" %83, ptr %35, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %75)
  br label %_llgo_14

_llgo_17:                                         ; preds = %_llgo_14
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %46)
  store ptr %84, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_14
  %85 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %86 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %87 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @7, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 4, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %92, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, i32 0, i32 1
  store ptr %85, ptr %95, align 8
  %96 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 0
  store ptr @8, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 1
  store i64 47, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %101, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %100, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %101, i32 0, i32 1
  store ptr %86, ptr %103, align 8
  %104 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %101, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %106 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %105, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %96, ptr %106, align 8
  %107 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %105, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %104, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 0
  store ptr %105, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 1
  store i64 2, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 2
  store i64 2, ptr %111, align 4
  %112 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 0
  store ptr @9, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 1
  store i64 38, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr @10, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 44, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %116, %"github.com/goplus/llgo/internal/runtime.String" %120, %"github.com/goplus/llgo/internal/runtime.Slice" %112)
  store ptr %121, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %122 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %123 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @11, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 4, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %128, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %127, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %128, i32 0, i32 1
  store ptr %122, ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %128, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 0
  store ptr @12, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 1
  store i64 47, ptr %134, align 4
  %135 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %132, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %136, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %135, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %136, i32 0, i32 1
  store ptr %123, ptr %138, align 8
  %139 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %136, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %141 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %140, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %131, ptr %141, align 8
  %142 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %140, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %139, ptr %142, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, i32 0, i32 0
  store ptr %140, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, i32 0, i32 1
  store i64 2, ptr %145, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, i32 0, i32 2
  store i64 2, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr @13, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 4, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @14, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 0, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %151, %"github.com/goplus/llgo/internal/runtime.String" %155, %"github.com/goplus/llgo/internal/runtime.Slice" %147)
  store ptr %156, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")
