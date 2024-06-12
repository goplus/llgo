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

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"*_llgo_main.Game1" = linkonce global ptr null
@_llgo_main.Game1 = linkonce global ptr null
@"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI" = linkonce global ptr null
@"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game" = linkonce global ptr null
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Game" = linkonce global ptr null
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null
@0 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@1 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null
@2 = private unnamed_addr constant [9 x i8] c"initGame\00", align 1
@3 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame\00", align 1
@4 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/internal/foo\00", align 1
@5 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/internal/foo.Game\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@8 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"initGame\00", align 1
@11 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@13 = private unnamed_addr constant [11 x i8] c"main.Game1\00", align 1
@"*_llgo_main.Game2" = linkonce global ptr null
@_llgo_main.Game2 = linkonce global ptr null
@14 = private unnamed_addr constant [9 x i8] c"initGame\00", align 1
@15 = private unnamed_addr constant [14 x i8] c"main.initGame\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@17 = private unnamed_addr constant [11 x i8] c"main.Game2\00", align 1
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer" = linkonce global ptr null
@18 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@19 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame\00", align 1
@20 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/internal/foo\00", align 1
@21 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/internal/foo.Gamer\00", align 1
@"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = global ptr null
@22 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@23 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame\00", align 1
@24 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@26 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@27 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1

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
  store ptr @26, ptr %51, align 8
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
  store ptr @27, ptr %73, align 8
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
  %26 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %27 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 0
  store ptr %29, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 2
  store i64 0, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, i32 0, i32 0
  store ptr %35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, i32 0, i32 1
  store i64 0, ptr %38, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, i32 0, i32 2
  store i64 0, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %34, %"github.com/goplus/llgo/internal/runtime.Slice" %40, i1 false)
  store ptr %41, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %42 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %43 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %43, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %43, i32 0, i32 1
  store ptr %42, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %43, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %43, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %47, align 8
  %48 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %43, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 0
  store ptr @2, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 1
  store i64 8, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %49, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @3, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 47, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %57 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %58 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 1
  store ptr %57, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %58, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %62, align 8
  %63 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %58, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %65 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %48, ptr %65, align 8
  %66 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %63, ptr %66, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 0
  store ptr %64, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 1
  store i64 2, ptr %69, align 4
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, i32 0, i32 2
  store i64 2, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %67, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @4, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 38, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @5, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 43, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %5, %"github.com/goplus/llgo/internal/runtime.String" %75, %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %19, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %71)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %26)
  store ptr %80, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %81 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %82 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @6, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 4, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr @7, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 0, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  %92 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %87, ptr %81, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %91, i1 true)
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @8, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 4, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %98 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %97, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %92, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 0
  store ptr %97, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 1
  store i64 1, ptr %101, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 2
  store i64 1, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %96, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %103)
  store ptr %104, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %105 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br i1 %1, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr @9, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 4, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %111 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %109, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 1
  store ptr %110, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %115, align 8
  %116 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %111, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr @10, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 8, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 0
  store ptr @11, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %121, i32 0, i32 1
  store i64 47, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %121, align 8
  %125 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %126 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %124, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 1
  store ptr %125, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %126, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %130, align 8
  %131 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %126, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %133 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %132, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %116, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %132, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %131, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %132, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 2, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 2, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @12, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 4, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @13, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 10, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %143, %"github.com/goplus/llgo/internal/runtime.String" %147, ptr %105, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %139)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %148 = load ptr, ptr @_llgo_main.Game1, align 8
  %149 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %148)
  store ptr %151, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %152 = load ptr, ptr @_llgo_main.Game2, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %154, ptr @_llgo_main.Game2, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %155 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %153, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @14, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 8, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @15, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 13, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %165 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %165, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %163, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %165, i32 0, i32 1
  store ptr %164, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %165, i32 0, i32 2
  store ptr @"main.(*Game2).initGame", ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %165, i32 0, i32 3
  store ptr @"main.(*Game2).initGame", ptr %169, align 8
  %170 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %165, align 8
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %172 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %171, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %170, ptr %172, align 8
  %173 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, i32 0, i32 0
  store ptr %171, ptr %174, align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, i32 0, i32 1
  store i64 1, ptr %175, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, i32 0, i32 2
  store i64 1, ptr %176, align 4
  %177 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 0
  store ptr @16, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 1
  store i64 4, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %178, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 0
  store ptr @17, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 1
  store i64 10, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %182, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %154, %"github.com/goplus/llgo/internal/runtime.String" %181, %"github.com/goplus/llgo/internal/runtime.String" %185, ptr %155, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %177)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %186 = load ptr, ptr @_llgo_main.Game2, align 8
  %187 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %189 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %186)
  store ptr %189, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %190 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %191 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %192 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @18, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 4, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %197, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, i32 0, i32 1
  store ptr %190, ptr %200, align 8
  %201 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 0
  store ptr @19, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 1
  store i64 47, ptr %204, align 4
  %205 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %202, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %206, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %205, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %206, i32 0, i32 1
  store ptr %191, ptr %208, align 8
  %209 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %206, align 8
  %210 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %211 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %210, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %201, ptr %211, align 8
  %212 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %210, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %209, ptr %212, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 0
  store ptr %210, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 1
  store i64 2, ptr %215, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 2
  store i64 2, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr @20, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 38, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 0
  store ptr @21, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 1
  store i64 44, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %222, align 8
  %226 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %221, %"github.com/goplus/llgo/internal/runtime.String" %225, %"github.com/goplus/llgo/internal/runtime.Slice" %217)
  store ptr %226, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %227 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %228 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 0
  store ptr @22, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 1
  store i64 4, ptr %231, align 4
  %232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %229, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %233, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %232, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %233, i32 0, i32 1
  store ptr %227, ptr %235, align 8
  %236 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %233, align 8
  %237 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %237, i32 0, i32 0
  store ptr @23, ptr %238, align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %237, i32 0, i32 1
  store i64 47, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %237, align 8
  %241 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %241, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %240, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %241, i32 0, i32 1
  store ptr %228, ptr %243, align 8
  %244 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %241, align 8
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %246 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %245, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %236, ptr %246, align 8
  %247 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %245, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %244, ptr %247, align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, i32 0, i32 0
  store ptr %245, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, i32 0, i32 1
  store i64 2, ptr %250, align 4
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, i32 0, i32 2
  store i64 2, ptr %251, align 4
  %252 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %248, align 8
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 0
  store ptr @24, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 1
  store i64 4, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %253, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 0
  store ptr @25, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 1
  store i64 0, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %257, align 8
  %261 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %256, %"github.com/goplus/llgo/internal/runtime.String" %260, %"github.com/goplus/llgo/internal/runtime.Slice" %252)
  store ptr %261, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

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
