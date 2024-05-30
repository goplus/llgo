; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.eface = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"[10]_llgo_int" = linkonce global ptr null
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null
@"*_llgo_int" = linkonce global ptr null
@"[]_llgo_int" = linkonce global ptr null
@2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = global ptr null
@3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@7 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@9 = private unnamed_addr constant [5 x i8] c"main\00", align 1

define void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.eface, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @main.dumpTyp(ptr %3, %"github.com/goplus/llgo/internal/runtime.String" %7)
  ret void
}

define void @main.dumpTyp(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %2 = call i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr %0)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 9
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %17 = zext i32 %8 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %18 = zext i8 %10 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %19 = zext i8 %12 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr %0)
  %21 = icmp ne ptr %20, null
  br i1 %21, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %22 = call ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr %0)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr @1, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 1, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %26)
  call void @main.dumpTyp(ptr %22, %"github.com/goplus/llgo/internal/runtime.String" %27)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
  call void @"main.init$abi"()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %6)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %11)
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 1
  store ptr null, ptr %15, align 8
  %16 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %16)
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr null, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 1
  store ptr null, ptr %25, align 8
  %26 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %26)
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr null, ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %31)
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %36)
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %37, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr null, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %41)
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %46)
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 0
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 1
  store ptr null, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %51)
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %56)
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 0
  store ptr %57, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 1
  store ptr null, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %61)
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 1
  store ptr null, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %66)
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %67, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr null, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %71)
  %72 = load ptr, ptr @"[10]_llgo_int", align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %73, align 4
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 0
  store ptr %72, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 1
  store ptr %73, ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %77)
  %78 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %79, i32 0, i32 0
  store ptr %78, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %79, i32 0, i32 1
  store ptr @"main.main$1", ptr %81, align 8
  %82 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %79, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %82)
  %83 = load ptr, ptr @"*_llgo_int", align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %84, i32 0, i32 1
  store ptr null, ptr %86, align 8
  %87 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %84, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %87)
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 0)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 0
  store ptr %88, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 1
  store i64 0, ptr %91, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 2
  store i64 0, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, align 8
  %94 = load ptr, ptr @"[]_llgo_int", align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/internal/runtime.Slice" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %99)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @2, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 5, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %103, ptr %105, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %106, i32 0, i32 0
  store ptr %104, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %106, i32 0, i32 1
  store ptr %105, ptr %108, align 8
  %109 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %106, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %109)
  %110 = load ptr, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %111, align 4
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 0
  store ptr %110, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 1
  store ptr %111, ptr %114, align 8
  %115 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %115)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare i64 @"(*github.com/goplus/llgo/internal/abi.Type).Kind"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare ptr @"(*github.com/goplus/llgo/internal/abi.Type).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/abi.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define void @"main.main$1"() {
_llgo_0:
  ret void
}

define void @"main.init$abi"() {
_llgo_0:
  %0 = load ptr, ptr @"[10]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 10, ptr %2)
  store ptr %3, ptr @"[10]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, i32 0, i32 2
  store i64 0, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %7, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 2
  store i64 0, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %11, %"github.com/goplus/llgo/internal/runtime.Slice" %17, i1 false)
  store ptr %18, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %19 = load ptr, ptr @"*_llgo_int", align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  store ptr %22, ptr @"*_llgo_int", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %23 = load ptr, ptr @"[]_llgo_int", align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %25)
  store ptr %26, ptr @"[]_llgo_int", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 0
  store ptr @3, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %27, i32 0, i32 1
  store i64 1, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @4, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 0, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %30, ptr %31, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %35, i1 false)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @5, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 1, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr @6, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 0, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  %46 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %40, ptr %41, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %45, i1 false)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @7, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 1, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @8, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 0, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %50, ptr %51, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %55, i1 false)
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 0
  store ptr @9, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 1
  store i64 4, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %57, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %62 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %61, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %36, ptr %62, align 8
  %63 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %61, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %46, ptr %63, align 8
  %64 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %61, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %56, ptr %64, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 0
  store ptr %61, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 1
  store i64 3, ptr %67, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 2
  store i64 3, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, align 8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %60, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %69)
  store ptr %70, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)
