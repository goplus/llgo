; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/interface'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/interface"

%"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/compiler/cl/_testgo/interface.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/interface", align 1
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
@"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [5 x i8] c"Game2", align 1
@8 = private unnamed_addr constant [61 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/interface.initGame", align 1
@"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [5 x i8] c"Gamer", align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"OK", align 1
@11 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1.Load"(%"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1.initGame"(%"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game1).Load"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load"(ptr %2)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game1).initGame"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame"(ptr %2)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game2).initGame"(ptr %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  store ptr %2, ptr %1, align 8
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %0, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2", align 8
  %9 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2", align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %7, 1
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 0
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %13, ptr %12)
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, 0
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = insertvalue { ptr, ptr } undef, ptr %18, 0
  %20 = insertvalue { ptr, ptr } %19, ptr %15, 1
  %21 = extractvalue { ptr, ptr } %20, 1
  %22 = extractvalue { ptr, ptr } %20, 0
  call void %22(ptr %21)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 0
  %24 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %24, ptr %23)
  br i1 %25, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 1
  %27 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %27, ptr %12)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %26, 1
  %31 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, 0
  %32 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %31, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %33 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %32, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %34 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %33, 0
  %35 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %33, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %35, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 1
  %37 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %37, ptr %23)
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %36, 1
  %41 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, 0
  %42 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %41, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %43 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %42, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %44 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, 0
  %45 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load"(ptr)

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame"(ptr)

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/compiler/cl/_testgo/interface.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, i64 25, i64 8, i64 2, i64 2)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %0)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
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
  %6 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %13 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %5, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 0, i64 0, i64 2)
  %18 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_7
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 0, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 0, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %28)
  store ptr %28, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %29 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %29, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load", 2
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %31, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).Load", 3
  %33 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef, ptr undef, ptr undef }, ptr %33, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 2
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 3
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %37, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr %38, align 8
  %39 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %37, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %3, ptr %13, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42)
  br label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %43)
  store ptr %43, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_8
  %44 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Game", align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 0, i64 0, i64 2)
  %46 = load ptr, ptr @"_llgo_struct$8pZiNl4ZxK-lZr-eyXOGJ2lgSsNDx-SmrHiChs0Nc-o", align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %45)
  %49 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %48, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %51 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %49, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 1
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 1, 2
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %55)
  store ptr %55, ptr @"_llgo_struct$8pZiNl4ZxK-lZr-eyXOGJ2lgSsNDx-SmrHiChs0Nc-o", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %56 = load ptr, ptr @"_llgo_struct$8pZiNl4ZxK-lZr-eyXOGJ2lgSsNDx-SmrHiChs0Nc-o", align 8
  br i1 %2, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %57 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %57, 1
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game1).Load", 2
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game1).Load", 3
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %57, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game1).Load", 2
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1.Load", 3
  %64 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef, ptr undef, ptr undef }, ptr %64, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 2
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/foo.(*Game).initGame", 3
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %69 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %68, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr %69, align 8
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %68, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 1, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 2
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %74 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %73, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr %74, align 8
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %73, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %73, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 2, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, i64 25, i64 8, i64 2, i64 2)
  %80 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %82)
  store ptr %82, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, i64 25, i64 0, i64 0, i64 1)
  %84 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %83, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %86 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %85, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %87 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 61 }, ptr undef, ptr undef, ptr undef }, ptr %87, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game2).initGame", 2
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %89, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.(*Game2).initGame", 3
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %92 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %91, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 1, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %83, ptr %86, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, i64 25, i64 0, i64 0, i64 1)
  %97 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2", align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %96)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %99)
  store ptr %99, ptr @"*_llgo_github.com/goplus/llgo/compiler/cl/_testgo/interface.Game2", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 })
  %101 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  store ptr %100, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testdata/foo.Gamer", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %103 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %104 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %102, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef }, ptr %103, 1
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef }, ptr %104, 1
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %108 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %107, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %105, ptr %108, align 8
  %109 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %107, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %106, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %107, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 2, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %100, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %113 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %114 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef }, ptr %113, 1
  %116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 57 }, ptr undef }, ptr %114, 1
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %117, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %115, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %117, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %116, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %117, 0
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 2, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 2, 2
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122)
  store ptr %123, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
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
