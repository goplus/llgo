; ModuleID = 'main'
source_filename = "main"

%main.Game1 = type { ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.Game1 = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [10 x i8] c"main.Game1", align 1
@"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/internal/foo.Game", align 1
@2 = private unnamed_addr constant [4 x i8] c"Game", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@6 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame", align 1
@7 = private unnamed_addr constant [5 x i8] c"Game1", align 1
@"*_llgo_main.Game1" = linkonce global ptr null, align 8
@_llgo_main.Game2 = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [10 x i8] c"main.Game2", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [13 x i8] c"main.initGame", align 1
@10 = private unnamed_addr constant [5 x i8] c"Game2", align 1
@"*_llgo_main.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
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
  %12 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @2, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 4, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 0, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %11)
  %23 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %17, ptr %22, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %21, i1 true)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @3, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 4, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %29 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %28, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %23, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 0
  store ptr %28, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 1
  store i64 1, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 2
  store i64 1, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %27, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %34)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %35)
  store ptr %35, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %36 = load ptr, ptr @"_llgo_struct$cJmCzeVn0orHWafCrTGAnbbAF46F2A4Fms4bJBm8ITI", align 8
  br i1 %6, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @4, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 4, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @0, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 10, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %46, i64 25, i64 8, i64 2, i64 2)
  %48 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 0
  store ptr %50, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 1
  store i64 0, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 2
  store i64 0, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 0
  store ptr %56, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 1
  store i64 0, ptr %59, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 2
  store i64 0, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %55, %"github.com/goplus/llgo/internal/runtime.Slice" %61, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %62)
  store ptr %62, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %63 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %64 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 1
  store ptr %63, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %64, i32 0, i32 3
  store ptr @"main.(*Game1).Load", ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %64, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 1
  store ptr %63, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 2
  store ptr @"main.(*Game1).Load", ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %70, i32 0, i32 3
  store ptr @main.Game1.Load, ptr %74, align 8
  %75 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %70, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @5, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 8, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr @6, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 47, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  %84 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %85 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %83, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 1
  store ptr %84, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/cl/internal/foo.(*Game).initGame", ptr %89, align 8
  %90 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %85, align 8
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %92 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %75, ptr %92, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, i32 0, i32 0
  store ptr %91, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, i32 0, i32 1
  store i64 1, ptr %95, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, i32 0, i32 2
  store i64 1, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %99 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %98, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %69, ptr %99, align 8
  %100 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %98, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %90, ptr %100, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 0
  store ptr %98, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 1
  store i64 2, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 2
  store i64 2, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr @3, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 4, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr @7, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 5, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %109, %"github.com/goplus/llgo/internal/runtime.String" %113, ptr %36, %"github.com/goplus/llgo/internal/runtime.Slice" %97, %"github.com/goplus/llgo/internal/runtime.Slice" %105)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_6
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %47)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %114)
  store ptr %114, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @8, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 10, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  %119 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %118, i64 25, i64 0, i64 0, i64 1)
  %120 = load ptr, ptr @_llgo_main.Game2, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %119, ptr @_llgo_main.Game2, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %122 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @3, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 4, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 0
  store ptr %128, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 1
  store i64 0, ptr %131, align 4
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, i32 0, i32 2
  store i64 0, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %129, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %127, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %133)
  store ptr %134, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %135 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %121, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 0
  store ptr @5, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 1
  store i64 8, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %136, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @9, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 13, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %145 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %143, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 1
  store ptr %144, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 2
  store ptr @"main.(*Game2).initGame", ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 3
  store ptr @"main.(*Game2).initGame", ptr %149, align 8
  %150 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %145, align 8
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %152 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %150, ptr %152, align 8
  %153 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, i32 0, i32 0
  store ptr %151, ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, i32 0, i32 1
  store i64 1, ptr %155, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, i32 0, i32 2
  store i64 1, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, align 8
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 0
  store ptr @3, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 1
  store i64 4, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %158, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr @10, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 5, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %119, %"github.com/goplus/llgo/internal/runtime.String" %161, %"github.com/goplus/llgo/internal/runtime.String" %165, ptr %135, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %157)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr @8, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 10, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %169, i64 25, i64 0, i64 0, i64 1)
  %171 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %173 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %170)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %173)
  store ptr %173, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %174 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %175 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %176 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 0
  store ptr @4, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 1
  store i64 4, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %178, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %181, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, i32 0, i32 1
  store ptr %174, ptr %184, align 8
  %185 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, align 8
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr @6, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 47, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %190, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %189, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %190, i32 0, i32 1
  store ptr %175, ptr %192, align 8
  %193 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %190, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %195 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %194, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %185, ptr %195, align 8
  %196 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %194, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %193, ptr %196, align 8
  %197 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %197, i32 0, i32 0
  store ptr %194, ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %197, i32 0, i32 1
  store i64 2, ptr %199, align 4
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %197, i32 0, i32 2
  store i64 2, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %197, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 0
  store ptr @11, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 1
  store i64 38, ptr %204, align 4
  %205 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %202, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %206, i32 0, i32 0
  store ptr @12, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %206, i32 0, i32 1
  store i64 44, ptr %208, align 4
  %209 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %206, align 8
  %210 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %205, %"github.com/goplus/llgo/internal/runtime.String" %209, %"github.com/goplus/llgo/internal/runtime.Slice" %201)
  store ptr %210, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %211 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %212 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @4, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 4, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %217, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %216, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %217, i32 0, i32 1
  store ptr %211, ptr %219, align 8
  %220 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %217, align 8
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @6, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 47, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %225, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %224, ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %225, i32 0, i32 1
  store ptr %212, ptr %227, align 8
  %228 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %225, align 8
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %230 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %229, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %220, ptr %230, align 8
  %231 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %229, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %228, ptr %231, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 0
  store ptr %229, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 1
  store i64 2, ptr %234, align 4
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 2
  store i64 2, ptr %235, align 4
  %236 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, align 8
  %237 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %237, i32 0, i32 0
  store ptr @3, ptr %238, align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %237, i32 0, i32 1
  store i64 4, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %237, align 8
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 0
  store ptr null, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 1
  store i64 0, ptr %243, align 4
  %244 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %241, align 8
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %240, %"github.com/goplus/llgo/internal/runtime.String" %244, %"github.com/goplus/llgo/internal/runtime.Slice" %236)
  store ptr %245, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
