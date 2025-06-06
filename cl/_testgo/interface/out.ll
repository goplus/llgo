; ModuleID = 'github.com/goplus/llgo/cl/_testgo/interface'
source_filename = "github.com/goplus/llgo/cl/_testgo/interface"

%"github.com/goplus/llgo/cl/_testgo/interface.Game1" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/interface.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/interface", align 1
@1 = private unnamed_addr constant [5 x i8] c"Game1", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@3 = private unnamed_addr constant [4 x i8] c"Game", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"Load", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [8 x i8] c"initGame", align 1
@6 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.initGame", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game" = linkonce global ptr null, align 8
@"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [5 x i8] c"Game2", align 1
@8 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/cl/_testgo/interface.initGame", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [5 x i8] c"Gamer", align 1
@"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"OK", align 1
@11 = private unnamed_addr constant [4 x i8] c"FAIL", align 1

define void @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load"(%"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.Game1.initGame"(%"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/interface.Game1" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %2)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).initGame"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %2)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame"(ptr %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/interface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/interface.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  call void @"github.com/goplus/llgo/cl/_testgo/interface.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/interface.Game1", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  store ptr %2, ptr %1, align 8
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %0, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", align 8
  %9 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %7, 1
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 0
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", align 8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %13, ptr %12)
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %15, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %15)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = insertvalue { ptr, ptr } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr } %20, ptr %16, 1
  %22 = extractvalue { ptr, ptr } %21, 1
  %23 = extractvalue { ptr, ptr } %21, 0
  call void %23(ptr %22)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 0
  %25 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", align 8
  %26 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %25, ptr %24)
  br i1 %26, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 1
  %28 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %28, ptr %12)
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %27, 1
  %32 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, 0
  %33 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %32, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %34 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %33, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %35 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %34, 0
  %36 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %34, 1
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %37, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %38, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br i1 %36, label %_llgo_1, label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_2
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 1
  %40 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %40, ptr %24)
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %39, 1
  %44 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %45 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %44, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %46 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %45, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %47 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %46, 0
  %48 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %46, 1
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr %49, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %50, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/interface.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 8, i64 2, i64 2)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %5, ptr %6, i64 25, i64 0, i64 0, i64 2)
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %7, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 0, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 0, 2
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, ptr %15, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %14, i64 0, ptr %15)
  store ptr %16, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %17 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %9, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %18 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %20 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %22, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %21, ptr %22, i64 25, i64 0, i64 0, i64 2)
  %24 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 0, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 0, 2
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 0, 1
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 0, 2
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, ptr %34, align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, ptr %35, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %34, ptr %35, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %36)
  store ptr %36, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %37 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %37, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load", 2
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load", 3
  %41 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 48 }, ptr undef, ptr undef, ptr undef }, ptr %41, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", 2
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", 3
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %46 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %45, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr %46, align 8
  %47 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %45, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %45, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 2, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 2, 2
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, ptr %52, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %7, ptr %17, ptr %51, ptr %52)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_6
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %53)
  store ptr %53, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %54 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Game", align 8
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %56, align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %55, ptr %56, i64 25, i64 0, i64 0, i64 2)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %57)
  %59 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %60, align 8
  %61 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %61, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %59, ptr %60, ptr %58, i64 0, ptr %61, i1 true)
  %62 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %59, align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %63, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %62, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 2
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, ptr %69, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %68, i64 8, ptr %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %70)
  store ptr %70, ptr @"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q", align 8
  %71 = load ptr, ptr @"_llgo_struct$4-TjwxozfgwR2wiuWBRPbxjG2hQENVAzi2bsR9iH62Q", align 8
  br i1 %4, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %72 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", 2
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", 3
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game1).Load", 2
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/cl/_testgo/interface.Game1.Load", 3
  %79 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 48 }, ptr undef, ptr undef, ptr undef }, ptr %79, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", 2
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame", 3
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %84 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %83, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 1, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 1, 2
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %89 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %88, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr %89, align 8
  %90 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %88, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr %90, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %88, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 2, 1
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 2, 2
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr %94, align 8
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, ptr %95, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %71, ptr %94, ptr %95)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %96 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %97, align 8
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %96, ptr %97, i64 25, i64 8, i64 2, i64 2)
  %99 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %98)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %101)
  store ptr %101, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game1", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %102 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %102, align 8
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %103, align 8
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %102, ptr %103, i64 25, i64 0, i64 0, i64 1)
  %105 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %104, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %107 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %106, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %108 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 52 }, ptr undef, ptr undef, ptr undef }, ptr %108, 1
  %110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame", 2
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %110, ptr @"github.com/goplus/llgo/cl/_testgo/interface.(*Game2).initGame", 3
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %113 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %112, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %111, ptr %113, align 8
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %112, 0
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, i64 1, 1
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115, i64 1, 2
  %117 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %117, align 8
  %118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, ptr %118, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %104, ptr %107, ptr %117, ptr %118)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %119 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %119, align 8
  %120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %120, align 8
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %119, ptr %120, i64 25, i64 0, i64 0, i64 1)
  %122 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %121)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %124)
  store ptr %124, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/interface.Game2", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %125 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 39 }, ptr %125, align 8
  %126 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %126, align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %125, ptr %126)
  %128 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %127, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Gamer", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %130 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %131 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %129, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %132 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef }, ptr %130, 1
  %133 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 48 }, ptr undef }, ptr %131, 1
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %135 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %134, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %132, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %134, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %133, ptr %136, align 8
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %134, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i64 2, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138, i64 2, 2
  %140 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, ptr %140, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %127, ptr %140)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %141 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %142 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %143 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr undef }, ptr %141, 1
  %144 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 48 }, ptr undef }, ptr %142, 1
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %146 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %145, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %143, ptr %146, align 8
  %147 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %145, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %144, ptr %147, align 8
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %145, 0
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %148, i64 2, 1
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, i64 2, 2
  %151 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %151, align 8
  %152 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %150, ptr %152, align 8
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %151, ptr %152)
  store ptr %153, ptr @"github.com/goplus/llgo/cl/_testgo/interface.iface$sO8a1LvuUsjXwiwaC6sR9-L4DiYgiOnZi7iosyShJXg", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
