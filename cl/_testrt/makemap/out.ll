; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1
@6 = private unnamed_addr constant [5 x i8] c"world", align 1
@7 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@8 = private unnamed_addr constant [1 x i8] c":", align 1
@"map[_llgo_string]_llgo_int" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"go", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
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
  %2 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @5, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %8, ptr %3, ptr %9)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @6, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 5, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %15, ptr %3, ptr %16)
  store %"github.com/goplus/llgo/internal/runtime.String" %14, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @7, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 4, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %23, align 4
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %22, ptr %3, ptr %23)
  store %"github.com/goplus/llgo/internal/runtime.String" %21, ptr %24, align 8
  %25 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %26, align 4
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %25, ptr %3, ptr %26)
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %29 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %30, align 4
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %29, ptr %3, ptr %30)
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  %33 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %34 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %34, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %36 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %35)
  %37 = extractvalue { i1, ptr, ptr } %36, 0
  br i1 %37, label %_llgo_7, label %_llgo_8

_llgo_2:                                          ; preds = %_llgo_9
  %38 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %110, 1
  %39 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %110, 2
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @8, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 1, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %39)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_9
  %44 = load i64, ptr %3, align 4
  %45 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %45, i64 %44)
  %47 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %47, ptr %3)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %49 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %48)
  %50 = extractvalue { i1, ptr, ptr } %49, 0
  br i1 %50, label %_llgo_10, label %_llgo_11

_llgo_5:                                          ; preds = %_llgo_12
  %51 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %126, 1
  %52 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %126, 2
  %53 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %53, ptr %46, ptr %54)
  store i64 %51, ptr %55, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_12
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @7, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %59, ptr %61, align 8
  %62 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %60, ptr %46, ptr %61)
  %63 = extractvalue { ptr, i1 } %62, 0
  %64 = load i64, ptr %63, align 4
  %65 = extractvalue { ptr, i1 } %62, 1
  %66 = alloca { i64, i1 }, align 8
  %67 = getelementptr inbounds { i64, i1 }, ptr %66, i32 0, i32 0
  store i64 %64, ptr %67, align 4
  %68 = getelementptr inbounds { i64, i1 }, ptr %66, i32 0, i32 1
  store i1 %65, ptr %68, align 1
  %69 = load { i64, i1 }, ptr %66, align 4
  %70 = extractvalue { i64, i1 } %69, 0
  %71 = extractvalue { i64, i1 } %69, 1
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @7, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 4, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %75)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %71)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @9, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 2, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %81, align 8
  %82 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %80, ptr %46, ptr %81)
  %83 = extractvalue { ptr, i1 } %82, 0
  %84 = load i64, ptr %83, align 4
  %85 = extractvalue { ptr, i1 } %82, 1
  %86 = alloca { i64, i1 }, align 8
  %87 = getelementptr inbounds { i64, i1 }, ptr %86, i32 0, i32 0
  store i64 %84, ptr %87, align 4
  %88 = getelementptr inbounds { i64, i1 }, ptr %86, i32 0, i32 1
  store i1 %85, ptr %88, align 1
  %89 = load { i64, i1 }, ptr %86, align 4
  %90 = extractvalue { i64, i1 } %89, 0
  %91 = extractvalue { i64, i1 } %89, 1
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @9, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 2, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %95)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %90)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %91)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_7:                                          ; preds = %_llgo_1
  %96 = extractvalue { i1, ptr, ptr } %36, 1
  %97 = extractvalue { i1, ptr, ptr } %36, 2
  %98 = load i64, ptr %96, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %100 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %101 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %100, i32 0, i32 0
  store i1 true, ptr %101, align 1
  %102 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %100, i32 0, i32 1
  store i64 %98, ptr %102, align 4
  %103 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %100, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %99, ptr %103, align 8
  %104 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %100, align 8
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_1
  %105 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %106 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %105, i32 0, i32 0
  store i1 false, ptr %106, align 1
  %107 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %105, i32 0, i32 1
  store i64 0, ptr %107, align 4
  %108 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %105, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %108, align 8
  %109 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %105, align 8
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %110 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %104, %_llgo_7 ], [ %109, %_llgo_8 ]
  %111 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %110, 0
  br i1 %111, label %_llgo_2, label %_llgo_3

_llgo_10:                                         ; preds = %_llgo_4
  %112 = extractvalue { i1, ptr, ptr } %49, 1
  %113 = extractvalue { i1, ptr, ptr } %49, 2
  %114 = load i64, ptr %112, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %116 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %117 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %116, i32 0, i32 0
  store i1 true, ptr %117, align 1
  %118 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %116, i32 0, i32 1
  store i64 %114, ptr %118, align 4
  %119 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %116, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %119, align 8
  %120 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %116, align 8
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_4
  %121 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %122 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %121, i32 0, i32 0
  store i1 false, ptr %122, align 1
  %123 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %121, i32 0, i32 1
  store i64 0, ptr %123, align 4
  %124 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %121, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %124, align 8
  %125 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %121, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %126 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %120, %_llgo_10 ], [ %125, %_llgo_11 ]
  %127 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %126, 0
  br i1 %127, label %_llgo_5, label %_llgo_6
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 7, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 0, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %12)
  %14 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %7, ptr %13, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %11, i1 false)
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @1, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 4, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 0, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %23)
  %25 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %18, ptr %24, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %22, i1 false)
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @2, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 5, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %34)
  %36 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %29, ptr %35, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %33, i1 false)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @3, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 8, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 0, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  %46 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %40, ptr %45, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %44, i1 false)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @4, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 4, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %52 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %14, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %25, ptr %53, align 8
  %54 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %36, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %46, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %51, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 4, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %50, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %60)
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %2, ptr %3, ptr %61, i64 4)
  store ptr %62, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %63 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 0
  store ptr @0, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 1
  store i64 7, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %67, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr null, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 0, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %75)
  %77 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %70, ptr %76, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %74, i1 false)
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @1, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 4, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr null, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %86)
  %88 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %81, ptr %87, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %85, i1 false)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @2, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 5, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 0, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %97)
  %99 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %92, ptr %98, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %96, i1 false)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @3, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 8, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr null, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 0, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  %109 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %103, ptr %108, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %107, i1 false)
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr @4, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 4, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %115 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %77, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %88, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %99, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %109, ptr %118, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 0
  store ptr %114, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 1
  store i64 4, ptr %121, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 2
  store i64 4, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %113, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %123)
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %65, ptr %66, ptr %124, i64 12)
  store ptr %125, ptr @"map[_llgo_string]_llgo_int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
