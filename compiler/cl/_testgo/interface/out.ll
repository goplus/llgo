; ModuleID = 'main'
source_filename = "main"

%main.Game1 = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.Game1 = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [5 x i8] c"Game1", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/compiler/cl/_testdata/foo", align 1
@3 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@6 = private unnamed_addr constant [57 x i8] c"github.com/goplus/llgo/compiler/cl/_testdata/foo.initGame", align 1
@"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game" = linkonce global ptr null, align 8
@"_llgo_struct$8pZiNl4ZxK-lZr-eyXOGJ2lgSsNDx-SmrHiChs0Nc-o" = linkonce global ptr null, align 8
@"*_llgo_main.Game1" = linkonce global ptr null, align 8
@_llgo_main.Game2 = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [5 x i8] c"Game2", align 1
@8 = private unnamed_addr constant [13 x i8] c"main.initGame", align 1
@"*_llgo_main.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [5 x i8] c"Gamer", align 1
@"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"OK", align 1
@11 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

define void @main.Game1.Load(%main.Game1 %0) {
_llgo_0:
  %1 = alloca %main.Game1, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %main.Game1 %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.Game1, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load"(ptr %3)
  ret void
}

define void @main.Game1.initGame(%main.Game1 %0) {
_llgo_0:
  %1 = alloca %main.Game1, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %main.Game1 %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.Game1, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame"(ptr %3)
  ret void
}

define void @"main.(*Game1).Load"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.Game1, ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load"(ptr %2)
  ret void
}

define void @"main.(*Game1).initGame"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.Game1, ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame"(ptr %2)
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
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()
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
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %main.Game1, ptr %2, i32 0, i32 0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr @_llgo_main.Game1, align 8
  %6 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %2, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %10 = load ptr, ptr @_llgo_main.Game2, align 8
  %11 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %9, 1
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 0
  %15 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  %16 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %15, ptr %14)
  br i1 %16, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %36)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, 0
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  call void %24(ptr %23)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, 0
  %26 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %26, ptr %25)
  br i1 %27, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 1
  %29 = load ptr, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %29, ptr %14)
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %28, 1
  %33 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, 0
  %34 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %33, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %35 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %34, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %36 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %35, 0
  %37 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %35, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %37, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, 1
  %39 = load ptr, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %39, ptr %25)
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %38, 1
  %43 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, 0
  %44 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %45 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %44, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %46 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %45, 0
  %47 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %45, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load"(ptr)

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame"(ptr)

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, i64 25, i64 8, i64 2, i64 2)
  %1 = load ptr, ptr @_llgo_main.Game1, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %0)
  store ptr %0, ptr @_llgo_main.Game1, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 0, i64 0, i64 2)
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  store ptr %10, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %11 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %5, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %12 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 0, i64 0, i64 2)
  %16 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 0, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 0, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 0, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 0, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %26)
  store ptr %26, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %27 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load", 3
  %31 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef, ptr undef, ptr undef }, ptr %31, 1
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 2
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 3
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %36 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %35, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %36, align 8
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %35, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 2, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %3, ptr %11, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_6
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %41)
  store ptr %41, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %42 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 0, i64 0, i64 2)
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %43)
  %45 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %44, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %47 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %46, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %45, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 2
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %51)
  store ptr %51, ptr @"_llgo_struct$8pZiNl4ZxK-lZr-eyXOGJ2lgSsNDx-SmrHiChs0Nc-o", align 8
  %52 = load ptr, ptr @"_llgo_struct$8pZiNl4ZxK-lZr-eyXOGJ2lgSsNDx-SmrHiChs0Nc-o", align 8
  br i1 %2, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %53 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %53, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr @"main.(*Game1).Load", 2
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr @"main.(*Game1).Load", 3
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %53, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"main.(*Game1).Load", 2
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @main.Game1.Load, 3
  %60 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef, ptr undef, ptr undef }, ptr %60, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 2
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 3
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %65 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %64, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 2
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr %70, align 8
  %71 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %69, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 2, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %52, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, i64 25, i64 8, i64 2, i64 2)
  %76 = load ptr, ptr @"*_llgo_main.Game1", align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %75)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %78)
  store ptr %78, ptr @"*_llgo_main.Game1", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, i64 25, i64 0, i64 0, i64 1)
  %80 = load ptr, ptr @_llgo_main.Game2, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %79, ptr @_llgo_main.Game2, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %82 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %81, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %83 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %83, 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr @"main.(*Game2).initGame", 2
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr @"main.(*Game2).initGame", 3
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %88 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %87, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr %88, align 8
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %87, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 1, 1
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %79, ptr %82, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, i64 25, i64 0, i64 0, i64 1)
  %93 = load ptr, ptr @"*_llgo_main.Game2", align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %95)
  store ptr %95, ptr @"*_llgo_main.Game2", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 })
  %97 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %96, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %99 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %100 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %98, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %101 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef }, ptr %99, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef }, ptr %100, 1
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %104 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %103, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %101, ptr %104, align 8
  %105 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %103, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %102, ptr %105, align 8
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %103, 0
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, i64 2, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %96, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %109 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %110 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef }, ptr %109, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef }, ptr %110, 1
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %114 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %113, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %111, ptr %114, align 8
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %113, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %112, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %113, 0
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, i64 2, 1
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 2, 2
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118)
  store ptr %119, ptr @"main.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
