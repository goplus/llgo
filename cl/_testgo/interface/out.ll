; ModuleID = 'main'
source_filename = "main"

%main.Game1 = type { ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.Game1 = linkonce global ptr null, align 8
@"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Game" = linkonce global ptr null, align 8
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@3 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame", align 1
@4 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
@5 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"Game1", align 1
@"*_llgo_main.Game1" = linkonce global ptr null, align 8
@_llgo_main.Game2 = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [13 x i8] c"main.initGame", align 1
@8 = private unnamed_addr constant [5 x i8] c"Game2", align 1
@"*_llgo_main.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/internal/foo.Gamer", align 1
@"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"OK", align 1
@11 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

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
  store ptr @10, ptr %51, align 8
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
  store ptr @11, ptr %73, align 8
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_main.Game1, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 2)
  store ptr %5, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr @0, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 4, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 2
  store i64 0, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %11, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %17)
  store ptr %18, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %4, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @1, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 4, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %26 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 2
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 1
  store i64 0, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 2
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %33, %"github.com/goplus/llgo/internal/runtime.Slice" %39, i1 false)
  store ptr %40, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %41 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %42 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %42, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %42, i32 0, i32 1
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %42, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %42, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %46, align 8
  %47 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %42, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr @2, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 8, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @3, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 47, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %57 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %55, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 1
  store ptr %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %57, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %57, align 8
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %64 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %47, ptr %64, align 8
  %65 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %63, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %62, ptr %65, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, i32 0, i32 0
  store ptr %63, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, i32 0, i32 1
  store i64 2, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, i32 0, i32 2
  store i64 2, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr @4, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 38, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 0
  store ptr @5, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 1
  store i64 4, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %75, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %5, %"github.com/goplus/llgo/internal/runtime.String" %74, %"github.com/goplus/llgo/internal/runtime.String" %78, ptr %19, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %70)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %5)
  store ptr %79, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %80 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %81 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @5, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 4, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 0
  store ptr null, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 1
  store i64 0, ptr %89, align 4
  %90 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %87, align 8
  %91 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %86, ptr %80, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %90, i1 true)
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @0, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 4, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %97 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %96, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %91, ptr %97, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 0
  store ptr %96, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 1
  store i64 1, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 2
  store i64 1, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %95, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %102)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %103)
  store ptr %103, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %104 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br i1 %1, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 0
  store ptr @1, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 1
  store i64 4, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %105, align 8
  %109 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %110 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %110, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %108, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %110, i32 0, i32 1
  store ptr %109, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %110, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %110, i32 0, i32 3
  store ptr @"main.(*Game1).Load", ptr %114, align 8
  %115 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %110, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %116, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %108, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %116, i32 0, i32 1
  store ptr %109, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %116, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %116, i32 0, i32 3
  store ptr @main.Game1.Load, ptr %120, align 8
  %121 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %116, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 0
  store ptr @2, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 1
  store i64 8, ptr %124, align 4
  %125 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %122, align 8
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @3, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 47, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %131 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %131, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %129, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %131, i32 0, i32 1
  store ptr %130, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %131, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %131, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %135, align 8
  %136 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %131, align 8
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %138 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %137, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %121, ptr %138, align 8
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, i32 0, i32 0
  store ptr %137, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, i32 0, i32 1
  store i64 1, ptr %141, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, i32 0, i32 2
  store i64 1, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %145 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %144, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %115, ptr %145, align 8
  %146 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %144, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %136, ptr %146, align 8
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, i32 0, i32 0
  store ptr %144, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, i32 0, i32 1
  store i64 2, ptr %149, align 4
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, i32 0, i32 2
  store i64 2, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %147, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @0, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 4, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @6, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 5, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %155, %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %104, %"github.com/goplus/llgo/internal/runtime.Slice" %143, %"github.com/goplus/llgo/internal/runtime.Slice" %151)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %160 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %162 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2)
  store ptr %162, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %163 = load ptr, ptr @_llgo_main.Game2, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %165, ptr @_llgo_main.Game2, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %166 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %164, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 0
  store ptr @2, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 1
  store i64 8, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %167, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 0
  store ptr @7, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 1
  store i64 13, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %171, align 8
  %175 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %176 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %176, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %174, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %176, i32 0, i32 1
  store ptr %175, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %176, i32 0, i32 2
  store ptr @"main.(*Game2).initGame", ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %176, i32 0, i32 3
  store ptr @"main.(*Game2).initGame", ptr %180, align 8
  %181 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %176, align 8
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %183 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %182, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %181, ptr %183, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, i32 0, i32 0
  store ptr %182, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, i32 0, i32 1
  store i64 1, ptr %186, align 4
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, i32 0, i32 2
  store i64 1, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %184, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr @0, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 4, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 0
  store ptr @8, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 1
  store i64 5, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %193, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %165, %"github.com/goplus/llgo/internal/runtime.String" %192, %"github.com/goplus/llgo/internal/runtime.String" %196, ptr %166, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %188)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %197 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %165)
  store ptr %199, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %200 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %201 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %202 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 0
  store ptr @1, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 1
  store i64 4, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %204, align 8
  %208 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %208, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %207, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %208, i32 0, i32 1
  store ptr %200, ptr %210, align 8
  %211 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %208, align 8
  %212 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %212, i32 0, i32 0
  store ptr @3, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %212, i32 0, i32 1
  store i64 47, ptr %214, align 4
  %215 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %212, align 8
  %216 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %216, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %215, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %216, i32 0, i32 1
  store ptr %201, ptr %218, align 8
  %219 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %216, align 8
  %220 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %221 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %220, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %211, ptr %221, align 8
  %222 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %220, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %219, ptr %222, align 8
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, i32 0, i32 0
  store ptr %220, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, i32 0, i32 1
  store i64 2, ptr %225, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, i32 0, i32 2
  store i64 2, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, align 8
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr @4, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 38, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 0
  store ptr @9, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 1
  store i64 44, ptr %234, align 4
  %235 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %232, align 8
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %231, %"github.com/goplus/llgo/internal/runtime.String" %235, %"github.com/goplus/llgo/internal/runtime.Slice" %227)
  store ptr %236, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %237 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %238 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 0
  store ptr @1, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 1
  store i64 4, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %239, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %243, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %242, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %243, i32 0, i32 1
  store ptr %237, ptr %245, align 8
  %246 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %243, align 8
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 0
  store ptr @3, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 1
  store i64 47, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %250, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, i32 0, i32 1
  store ptr %238, ptr %253, align 8
  %254 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, align 8
  %255 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %256 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %255, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %246, ptr %256, align 8
  %257 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %255, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %254, ptr %257, align 8
  %258 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, i32 0, i32 0
  store ptr %255, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, i32 0, i32 1
  store i64 2, ptr %260, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, i32 0, i32 2
  store i64 2, ptr %261, align 4
  %262 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, align 8
  %263 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %263, i32 0, i32 0
  store ptr @0, ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %263, i32 0, i32 1
  store i64 4, ptr %265, align 4
  %266 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %263, align 8
  %267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 0
  store ptr null, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 1
  store i64 0, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %267, align 8
  %271 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %266, %"github.com/goplus/llgo/internal/runtime.String" %270, %"github.com/goplus/llgo/internal/runtime.Slice" %262)
  store ptr %271, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")
