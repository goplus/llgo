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
  %5 = load ptr, ptr @_llgo_main.Game1, align 8
  %6 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %2, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 0)
  %12 = load ptr, ptr @_llgo_main.Game2, align 8
  %13 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 1
  store ptr %11, ptr %16, align 8
  %17 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, align 8
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 0
  %19 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %20 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %19, ptr %18)
  br i1 %20, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %50)
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %50, 0
  %23 = getelementptr ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = alloca { ptr, ptr }, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds { ptr, ptr }, ptr %25, i32 0, i32 1
  store ptr %21, ptr %27, align 8
  %28 = load { ptr, ptr }, ptr %25, align 8
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  call void %30(ptr %29)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %31 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %17, 0
  %32 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %33 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %32, ptr %31)
  br i1 %33, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 1
  %35 = load ptr, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %35, ptr %18)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %37, i32 0, i32 0
  store ptr %36, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %37, i32 0, i32 1
  store ptr %34, ptr %39, align 8
  %40 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %37, align 8
  %41 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %42 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %41, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %40, ptr %42, align 8
  %43 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %41, i32 0, i32 1
  store i1 true, ptr %43, align 1
  %44 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %41, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %45 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %46 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %45, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %46, align 8
  %47 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %45, i32 0, i32 1
  store i1 false, ptr %47, align 1
  %48 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %45, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %49 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %44, %_llgo_3 ], [ %48, %_llgo_4 ]
  %50 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %49, 0
  %51 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %49, 1
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @13, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 2, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %50)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br i1 %51, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %56 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %17, 1
  %57 = load ptr, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %57, ptr %31)
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, i32 0, i32 0
  store ptr %58, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, i32 0, i32 1
  store ptr %56, ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, align 8
  %63 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %64 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %63, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %62, ptr %64, align 8
  %65 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %63, i32 0, i32 1
  store i1 true, ptr %65, align 1
  %66 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %63, align 8
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  %67 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %68 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %67, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %68, align 8
  %69 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %67, i32 0, i32 1
  store i1 false, ptr %69, align 1
  %70 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %67, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %71 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %66, %_llgo_6 ], [ %70, %_llgo_7 ]
  %72 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %71, 0
  %73 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %71, 1
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @14, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 4, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %72)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %73)
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
  %34 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @1, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 43, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %38, i64 25, i64 0, i64 0, i64 2)
  %40 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 1
  store i64 0, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 2
  store i64 0, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 0
  store ptr %48, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 1
  store i64 0, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 2
  store i64 0, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %47, %"github.com/goplus/llgo/internal/runtime.Slice" %53, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %54)
  store ptr %54, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %55 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %56 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %56, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %31, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %56, i32 0, i32 1
  store ptr %55, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %56, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %56, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).Load", ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %56, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @4, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 8, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @5, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 47, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %71 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %71, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %69, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %71, i32 0, i32 1
  store ptr %70, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %71, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %71, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %75, align 8
  %76 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %71, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %78 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %77, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %61, ptr %78, align 8
  %79 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %77, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %76, ptr %79, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 0
  store ptr %77, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 1
  store i64 2, ptr %82, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 2
  store i64 2, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, align 8
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 0
  store ptr @6, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 1
  store i64 38, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %85, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @7, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 4, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %11, %"github.com/goplus/llgo/internal/runtime.String" %88, %"github.com/goplus/llgo/internal/runtime.String" %92, ptr %27, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %84)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %39)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %93)
  store ptr %93, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %94 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/internal/foo.Game", align 8
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 0
  store ptr @1, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 1
  store i64 43, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %95, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %98, i64 25, i64 0, i64 0, i64 2)
  %100 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 0
  store ptr @7, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 1
  store i64 4, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %102, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr null, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 0, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %99)
  %111 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %105, ptr %110, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %109, i1 true)
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 0
  store ptr @2, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 1
  store i64 4, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %112, align 8
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %117 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %116, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %111, ptr %117, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, i32 0, i32 0
  store ptr %116, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, i32 0, i32 1
  store i64 1, ptr %120, align 4
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, i32 0, i32 2
  store i64 1, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %115, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %122)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %123)
  store ptr %123, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %124 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br i1 %6, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 0
  store ptr @3, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 1
  store i64 4, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %125, align 8
  %129 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %130 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %130, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %128, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %130, i32 0, i32 1
  store ptr %129, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %130, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %130, i32 0, i32 3
  store ptr @"main.(*Game1).Load", ptr %134, align 8
  %135 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %130, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %128, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 1
  store ptr %129, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %136, i32 0, i32 3
  store ptr @main.Game1.Load, ptr %140, align 8
  %141 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %136, align 8
  %142 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 0
  store ptr @4, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 1
  store i64 8, ptr %144, align 4
  %145 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %142, align 8
  %146 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %146, i32 0, i32 0
  store ptr @5, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %146, i32 0, i32 1
  store i64 47, ptr %148, align 4
  %149 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %146, align 8
  %150 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %151 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %149, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 1
  store ptr %150, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %155, align 8
  %156 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %151, align 8
  %157 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %158 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %157, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %141, ptr %158, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, i32 0, i32 0
  store ptr %157, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, i32 0, i32 1
  store i64 1, ptr %161, align 4
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, i32 0, i32 2
  store i64 1, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, align 8
  %164 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %165 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %164, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %135, ptr %165, align 8
  %166 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %164, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %156, ptr %166, align 8
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 0
  store ptr %164, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 1
  store i64 2, ptr %169, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 2
  store i64 2, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @2, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 4, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr @8, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 5, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %175, %"github.com/goplus/llgo/internal/runtime.String" %179, ptr %124, %"github.com/goplus/llgo/internal/runtime.Slice" %163, %"github.com/goplus/llgo/internal/runtime.Slice" %171)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 0
  store ptr @0, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 1
  store i64 10, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %180, align 8
  %184 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %183, i64 25, i64 8, i64 2, i64 2)
  %185 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %184)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %187)
  store ptr %187, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 0
  store ptr @9, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 1
  store i64 10, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %188, align 8
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %191, i64 25, i64 0, i64 0, i64 1)
  %193 = load ptr, ptr @_llgo_main.Game2, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %192, ptr @_llgo_main.Game2, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %195 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %194, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @4, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 8, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 0
  store ptr @10, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 1
  store i64 13, ptr %202, align 4
  %203 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %200, align 8
  %204 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %205 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %203, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 1
  store ptr %204, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 2
  store ptr @"main.(*Game2).initGame", ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %205, i32 0, i32 3
  store ptr @"main.(*Game2).initGame", ptr %209, align 8
  %210 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %205, align 8
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %212 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %210, ptr %212, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 0
  store ptr %211, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 1
  store i64 1, ptr %215, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 2
  store i64 1, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr @2, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 4, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 0
  store ptr @11, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 1
  store i64 5, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %222, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %192, %"github.com/goplus/llgo/internal/runtime.String" %221, %"github.com/goplus/llgo/internal/runtime.String" %225, ptr %195, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %217)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @9, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 10, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %229, i64 25, i64 0, i64 0, i64 1)
  %231 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %233 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %230)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %233)
  store ptr %233, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %234 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %235 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %236 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 0
  store ptr @3, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 4, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %242, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %241, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %242, i32 0, i32 1
  store ptr %234, ptr %244, align 8
  %245 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %242, align 8
  %246 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %246, i32 0, i32 0
  store ptr @5, ptr %247, align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %246, i32 0, i32 1
  store i64 47, ptr %248, align 4
  %249 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %246, align 8
  %250 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %250, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %249, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %250, i32 0, i32 1
  store ptr %235, ptr %252, align 8
  %253 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %250, align 8
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %255 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %254, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %245, ptr %255, align 8
  %256 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %254, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %253, ptr %256, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 0
  store ptr %254, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 1
  store i64 2, ptr %259, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 2
  store i64 2, ptr %260, align 4
  %261 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, align 8
  %262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 0
  store ptr @6, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 1
  store i64 38, ptr %264, align 4
  %265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %262, align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 0
  store ptr @12, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 1
  store i64 44, ptr %268, align 4
  %269 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %266, align 8
  %270 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %265, %"github.com/goplus/llgo/internal/runtime.String" %269, %"github.com/goplus/llgo/internal/runtime.Slice" %261)
  store ptr %270, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %271 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %272 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 0
  store ptr @3, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 1
  store i64 4, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %273, align 8
  %277 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %277, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %276, ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %277, i32 0, i32 1
  store ptr %271, ptr %279, align 8
  %280 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %277, align 8
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %281, i32 0, i32 0
  store ptr @5, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %281, i32 0, i32 1
  store i64 47, ptr %283, align 4
  %284 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %281, align 8
  %285 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %285, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %284, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %285, i32 0, i32 1
  store ptr %272, ptr %287, align 8
  %288 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %285, align 8
  %289 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %290 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %289, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %280, ptr %290, align 8
  %291 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %289, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %288, ptr %291, align 8
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 0
  store ptr %289, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 1
  store i64 2, ptr %294, align 4
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 2
  store i64 2, ptr %295, align 4
  %296 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, align 8
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 0
  store ptr @2, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 1
  store i64 4, ptr %299, align 4
  %300 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %297, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 0
  store ptr null, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 1
  store i64 0, ptr %303, align 4
  %304 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %301, align 8
  %305 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %300, %"github.com/goplus/llgo/internal/runtime.String" %304, %"github.com/goplus/llgo/internal/runtime.Slice" %296)
  store ptr %305, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
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
