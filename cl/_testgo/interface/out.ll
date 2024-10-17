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
@0 = private unnamed_addr constant [10 x i8] c"main.Game1", align 1
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Game" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/internal/foo.Game", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@5 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame", align 1
@6 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
@7 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game" = linkonce global ptr null, align 8
@"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [5 x i8] c"Game1", align 1
@"*_llgo_main.Game1" = linkonce global ptr null, align 8
@_llgo_main.Game2 = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [10 x i8] c"main.Game2", align 1
@10 = private unnamed_addr constant [13 x i8] c"main.initGame", align 1
@11 = private unnamed_addr constant [5 x i8] c"Game2", align 1
@"*_llgo_main.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/internal/foo.Gamer", align 1
@"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [2 x i8] c"OK", align 1
@14 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

define void @main.Game1.Load(%main.Game1 %0) {
_llgo_0:
  %1 = alloca %main.Game1, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %main.Game1 %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.Game1, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load"(ptr %3)
  ret void
}

define void @main.Game1.initGame(%main.Game1 %0) {
_llgo_0:
  %1 = alloca %main.Game1, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %main.Game1 %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.Game1, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame"(ptr %3)
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
  store ptr @13, ptr %51, align 8
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
  store ptr @14, ptr %73, align 8
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load"(ptr)

declare void @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame"(ptr)

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 10, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 8, i64 2, i64 2)
  %5 = load ptr, ptr @_llgo_main.Game1, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %4)
  store ptr %4, ptr @_llgo_main.Game1, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @1, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 43, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %10, i64 25, i64 0, i64 0, i64 2)
  %12 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %11, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %14 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @2, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 4, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 1
  store i64 0, ptr %23, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 2
  store i64 0, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %19, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %25)
  store ptr %26, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %27 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 0
  store ptr @3, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 1
  store i64 4, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  %32 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @1, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 43, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %37, i64 25, i64 0, i64 0, i64 2)
  %39 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %41, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 0, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 0, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 0, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 0, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %46, %"github.com/goplus/llgo/internal/runtime.Slice" %52, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %53)
  store ptr %53, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %54 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %55 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %31, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 1
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %59, align 8
  %60 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %55, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr @4, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 8, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 0
  store ptr @5, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 1
  store i64 47, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %65, align 8
  %69 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %70 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %68, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 1
  store ptr %69, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %74, align 8
  %75 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %70, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %77 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %60, ptr %77, align 8
  %78 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %76, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %75, ptr %78, align 8
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 0
  store ptr %76, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 1
  store i64 2, ptr %81, align 4
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, i32 0, i32 2
  store i64 2, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %79, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @6, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 38, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr @7, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 4, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %11, %"github.com/goplus/llgo/internal/runtime.String" %87, %"github.com/goplus/llgo/internal/runtime.String" %91, ptr %27, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %83)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %38)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %92)
  store ptr %92, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %93 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr @1, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 43, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %97, i64 25, i64 0, i64 0, i64 2)
  %99 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @7, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 4, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 0
  store ptr null, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 1
  store i64 0, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %105, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %98)
  %110 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %104, ptr %109, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %108, i1 true)
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 0
  store ptr @2, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 1
  store i64 4, ptr %113, align 4
  %114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %111, align 8
  %115 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %116 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %115, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %110, ptr %116, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %117, i32 0, i32 0
  store ptr %115, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %117, i32 0, i32 1
  store i64 1, ptr %119, align 4
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %117, i32 0, i32 2
  store i64 1, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %117, align 8
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %114, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %121)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %122)
  store ptr %122, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %123 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br i1 %6, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @3, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 4, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %129 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %129, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %127, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %129, i32 0, i32 1
  store ptr %128, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %129, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %129, i32 0, i32 3
  store ptr @"main.(*Game1).Load", ptr %133, align 8
  %134 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %129, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %135, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %127, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %135, i32 0, i32 1
  store ptr %128, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %135, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %135, i32 0, i32 3
  store ptr @main.Game1.Load, ptr %139, align 8
  %140 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %135, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr @4, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 8, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 0
  store ptr @5, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 1
  store i64 47, ptr %147, align 4
  %148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %145, align 8
  %149 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %150 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %150, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %148, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %150, i32 0, i32 1
  store ptr %149, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %150, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %150, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %154, align 8
  %155 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %150, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %157 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %156, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %140, ptr %157, align 8
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, i32 0, i32 0
  store ptr %156, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, i32 0, i32 1
  store i64 1, ptr %160, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, i32 0, i32 2
  store i64 1, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, align 8
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %164 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %134, ptr %164, align 8
  %165 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %163, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %155, ptr %165, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, i32 0, i32 0
  store ptr %163, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, i32 0, i32 1
  store i64 2, ptr %168, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, i32 0, i32 2
  store i64 2, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 0
  store ptr @2, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 1
  store i64 4, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %171, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 0
  store ptr @8, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 1
  store i64 5, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %175, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %174, %"github.com/goplus/llgo/internal/runtime.String" %178, ptr %123, %"github.com/goplus/llgo/internal/runtime.Slice" %162, %"github.com/goplus/llgo/internal/runtime.Slice" %170)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 0
  store ptr @0, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 1
  store i64 10, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %179, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %182, i64 25, i64 8, i64 2, i64 2)
  %184 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %183)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %186)
  store ptr %186, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @9, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 10, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %190, i64 25, i64 0, i64 0, i64 1)
  %192 = load ptr, ptr @_llgo_main.Game2, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %191, ptr @_llgo_main.Game2, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %194 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %193, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @4, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 8, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr @10, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 13, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  %203 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %204 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %204, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %202, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %204, i32 0, i32 1
  store ptr %203, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %204, i32 0, i32 2
  store ptr @"main.(*Game2).initGame", ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %204, i32 0, i32 3
  store ptr @"main.(*Game2).initGame", ptr %208, align 8
  %209 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %204, align 8
  %210 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %211 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %210, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %209, ptr %211, align 8
  %212 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, i32 0, i32 0
  store ptr %210, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, i32 0, i32 1
  store i64 1, ptr %214, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, i32 0, i32 2
  store i64 1, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, align 8
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr @2, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 4, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @11, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 5, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %191, %"github.com/goplus/llgo/internal/runtime.String" %220, %"github.com/goplus/llgo/internal/runtime.String" %224, ptr %194, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %216)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %225 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 0
  store ptr @9, ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 1
  store i64 10, ptr %227, align 4
  %228 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %225, align 8
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %228, i64 25, i64 0, i64 0, i64 1)
  %230 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %232 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %229)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %232)
  store ptr %232, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %233 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %234 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %235 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %237 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %237, i32 0, i32 0
  store ptr @3, ptr %238, align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %237, i32 0, i32 1
  store i64 4, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %237, align 8
  %241 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %241, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %240, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %241, i32 0, i32 1
  store ptr %233, ptr %243, align 8
  %244 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %241, align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 0
  store ptr @5, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 1
  store i64 47, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %245, align 8
  %249 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %249, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %248, ptr %250, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %249, i32 0, i32 1
  store ptr %234, ptr %251, align 8
  %252 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %249, align 8
  %253 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %254 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %253, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %244, ptr %254, align 8
  %255 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %253, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %252, ptr %255, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, i32 0, i32 0
  store ptr %253, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, i32 0, i32 1
  store i64 2, ptr %258, align 4
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, i32 0, i32 2
  store i64 2, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, align 8
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr @6, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 38, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 0
  store ptr @12, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 1
  store i64 44, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %265, align 8
  %269 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %264, %"github.com/goplus/llgo/internal/runtime.String" %268, %"github.com/goplus/llgo/internal/runtime.Slice" %260)
  store ptr %269, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %270 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %271 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 0
  store ptr @3, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 1
  store i64 4, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %272, align 8
  %276 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %276, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %275, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %276, i32 0, i32 1
  store ptr %270, ptr %278, align 8
  %279 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %276, align 8
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @5, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 47, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %284, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %283, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %284, i32 0, i32 1
  store ptr %271, ptr %286, align 8
  %287 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %284, align 8
  %288 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %289 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %288, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %279, ptr %289, align 8
  %290 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %288, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %287, ptr %290, align 8
  %291 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, i32 0, i32 0
  store ptr %288, ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, i32 0, i32 1
  store i64 2, ptr %293, align 4
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, i32 0, i32 2
  store i64 2, ptr %294, align 4
  %295 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, align 8
  %296 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %296, i32 0, i32 0
  store ptr @2, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %296, i32 0, i32 1
  store i64 4, ptr %298, align 4
  %299 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %296, align 8
  %300 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %300, i32 0, i32 0
  store ptr null, ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %300, i32 0, i32 1
  store i64 0, ptr %302, align 4
  %303 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %300, align 8
  %304 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %299, %"github.com/goplus/llgo/internal/runtime.String" %303, %"github.com/goplus/llgo/internal/runtime.Slice" %295)
  store ptr %304, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
