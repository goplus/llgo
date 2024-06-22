; ModuleID = 'main'
source_filename = "main"

%main.Game1 = type { ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@"*_llgo_main.Game1" = linkonce global ptr null, align 8
@"*_llgo_main.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer" = linkonce global ptr null, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"Load", align 1
@1 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/internal/foo.initGame", align 1
@2 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/internal/foo", align 1
@3 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/internal/foo.Gamer", align 1
@"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [2 x i8] c"OK", align 1
@6 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

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
  store ptr @5, ptr %51, align 8
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
  store ptr @6, ptr %73, align 8
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
  %0 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2)
  store ptr %3, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %6)
  store ptr %7, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %11, i32 0, i32 2
  store i64 0, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %11, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 1
  store i64 0, ptr %19, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 2
  store i64 0, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %15, %"github.com/goplus/llgo/internal/runtime.Slice" %21, i1 false)
  store ptr %22, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %23 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %24 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %25 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 0
  store ptr @0, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 1
  store i64 4, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %31 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %31, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %30, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %31, i32 0, i32 1
  store ptr %23, ptr %33, align 8
  %34 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %31, align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @1, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 47, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %39, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %38, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %39, i32 0, i32 1
  store ptr %24, ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %39, align 8
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %44 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %43, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %34, ptr %44, align 8
  %45 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %43, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %42, ptr %45, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 0
  store ptr %43, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 1
  store i64 2, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 2
  store i64 2, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, align 8
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 0
  store ptr @2, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 1
  store i64 38, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %51, align 8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @3, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 44, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %54, %"github.com/goplus/llgo/internal/runtime.String" %58, %"github.com/goplus/llgo/internal/runtime.Slice" %50)
  store ptr %59, ptr @"_llgo_github.com/goplus/llgo/cl/internal/foo.Gamer", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %60 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %61 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @0, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 4, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %66, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %65, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %66, i32 0, i32 1
  store ptr %60, ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %66, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr @1, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 47, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %74, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %73, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %74, i32 0, i32 1
  store ptr %61, ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %74, align 8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %79 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %69, ptr %79, align 8
  %80 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %77, ptr %80, align 8
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 0
  store ptr %78, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 1
  store i64 2, ptr %83, align 4
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, i32 0, i32 2
  store i64 2, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %81, align 8
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 0
  store ptr @4, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 1
  store i64 4, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %86, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr null, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 0, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %89, %"github.com/goplus/llgo/internal/runtime.String" %93, %"github.com/goplus/llgo/internal/runtime.Slice" %85)
  store ptr %94, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")
