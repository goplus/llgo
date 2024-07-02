; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }

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
@10 = private unnamed_addr constant [7 x i8] c"bad key", align 1
@_llgo_string = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [7 x i8] c"bad len", align 1
@"map[_llgo_any]_llgo_int" = linkonce global ptr null, align 8
@_llgo_main.N = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"[1]_llgo_int" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [1 x i8] c"N", align 1
@13 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1

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
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
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
  br i1 %37, label %_llgo_14, label %_llgo_15

_llgo_2:                                          ; preds = %_llgo_16
  %38 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %224, 1
  %39 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %224, 2
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

_llgo_3:                                          ; preds = %_llgo_16
  %44 = load i64, ptr %3, align 4
  %45 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %45, i64 %44)
  %47 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %47, ptr %3)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %49 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %48)
  %50 = extractvalue { i1, ptr, ptr } %49, 0
  br i1 %50, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_19
  %51 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %240, 1
  %52 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %240, 2
  %53 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %53, ptr %46, ptr %54)
  store i64 %51, ptr %55, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_19
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
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 0
  store ptr @7, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 1
  store i64 4, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %96, align 8
  %100 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %99, ptr %101, align 8
  call void @"github.com/goplus/llgo/internal/runtime.MapDelete"(ptr %100, ptr %46, ptr %101)
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 0
  store ptr @7, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 1
  store i64 4, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %102, align 8
  %106 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %105, ptr %107, align 8
  %108 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %106, ptr %46, ptr %107)
  %109 = extractvalue { ptr, i1 } %108, 0
  %110 = load i64, ptr %109, align 4
  %111 = extractvalue { ptr, i1 } %108, 1
  %112 = alloca { i64, i1 }, align 8
  %113 = getelementptr inbounds { i64, i1 }, ptr %112, i32 0, i32 0
  store i64 %110, ptr %113, align 4
  %114 = getelementptr inbounds { i64, i1 }, ptr %112, i32 0, i32 1
  store i1 %111, ptr %114, align 1
  %115 = load { i64, i1 }, ptr %112, align 4
  %116 = extractvalue { i64, i1 } %115, 0
  %117 = extractvalue { i64, i1 } %115, 1
  br i1 %117, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @10, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 7, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = load ptr, ptr @_llgo_string, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %123, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 0
  store ptr %122, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 1
  store ptr %123, ptr %126, align 8
  %127 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %127)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %128 = load i64, ptr %46, align 4
  %129 = icmp ne i64 %128, 2
  br i1 %129, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @11, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 7, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  %134 = load ptr, ptr @_llgo_string, align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %133, ptr %135, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %136, i32 0, i32 0
  store ptr %134, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %136, i32 0, i32 1
  store ptr %135, ptr %138, align 8
  %139 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %136, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %139)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %140 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %140, i64 0)
  %142 = load i64, ptr %141, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %141)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %142)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %143 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %143, i64 0)
  %145 = alloca [1 x i64], align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %145, i64 8)
  %147 = getelementptr inbounds i64, ptr %146, i64 0
  store i64 1, ptr %147, align 4
  %148 = load [1 x i64], ptr %146, align 4
  %149 = load ptr, ptr @_llgo_main.N, align 8
  %150 = extractvalue [1 x i64] %148, 0
  %151 = inttoptr i64 %150 to ptr
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %152, i32 0, i32 0
  store ptr %149, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %152, i32 0, i32 1
  store ptr %151, ptr %154, align 8
  %155 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %152, align 8
  %156 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %157 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %155, ptr %157, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %156, ptr %144, ptr %157)
  store i64 100, ptr %158, align 4
  %159 = alloca [1 x i64], align 8
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %159, i64 8)
  %161 = getelementptr inbounds i64, ptr %160, i64 0
  store i64 2, ptr %161, align 4
  %162 = load [1 x i64], ptr %160, align 4
  %163 = load ptr, ptr @_llgo_main.N, align 8
  %164 = extractvalue [1 x i64] %162, 0
  %165 = inttoptr i64 %164 to ptr
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %166, i32 0, i32 0
  store ptr %163, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %166, i32 0, i32 1
  store ptr %165, ptr %168, align 8
  %169 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %166, align 8
  %170 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %169, ptr %171, align 8
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %170, ptr %144, ptr %171)
  store i64 200, ptr %172, align 4
  %173 = alloca [1 x i64], align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %173, i64 8)
  %175 = getelementptr inbounds i64, ptr %174, i64 0
  store i64 3, ptr %175, align 4
  %176 = load [1 x i64], ptr %174, align 4
  %177 = load ptr, ptr @_llgo_main.N, align 8
  %178 = extractvalue [1 x i64] %176, 0
  %179 = inttoptr i64 %178 to ptr
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %180, i32 0, i32 0
  store ptr %177, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %180, i32 0, i32 1
  store ptr %179, ptr %182, align 8
  %183 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %180, align 8
  %184 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %183, ptr %185, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %184, ptr %144, ptr %185)
  store i64 300, ptr %186, align 4
  %187 = alloca [1 x i64], align 8
  %188 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %187, i64 8)
  %189 = getelementptr inbounds i64, ptr %188, i64 0
  store i64 2, ptr %189, align 4
  %190 = load [1 x i64], ptr %188, align 4
  %191 = load ptr, ptr @_llgo_main.N, align 8
  %192 = extractvalue [1 x i64] %190, 0
  %193 = inttoptr i64 %192 to ptr
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %194, i32 0, i32 0
  store ptr %191, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %194, i32 0, i32 1
  store ptr %193, ptr %196, align 8
  %197 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %194, align 8
  %198 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %197, ptr %199, align 8
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %198, ptr %144, ptr %199)
  store i64 -200, ptr %200, align 4
  %201 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %201, ptr %144)
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_23, %_llgo_10
  %203 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %202)
  %204 = extractvalue { i1, ptr, ptr } %203, 0
  br i1 %204, label %_llgo_20, label %_llgo_21

_llgo_12:                                         ; preds = %_llgo_22
  %205 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %256, 1
  %206 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %256, 2
  %207 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %205, 0
  %208 = load ptr, ptr @_llgo_main.N, align 8
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %_llgo_23, label %_llgo_24

_llgo_13:                                         ; preds = %_llgo_22
  ret i32 0

_llgo_14:                                         ; preds = %_llgo_1
  %210 = extractvalue { i1, ptr, ptr } %36, 1
  %211 = extractvalue { i1, ptr, ptr } %36, 2
  %212 = load i64, ptr %210, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %211, align 8
  %214 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %215 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %214, i32 0, i32 0
  store i1 true, ptr %215, align 1
  %216 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %214, i32 0, i32 1
  store i64 %212, ptr %216, align 4
  %217 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %214, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %213, ptr %217, align 8
  %218 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %214, align 8
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_1
  %219 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %220 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %219, i32 0, i32 0
  store i1 false, ptr %220, align 1
  %221 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %219, i32 0, i32 1
  store i64 0, ptr %221, align 4
  %222 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %219, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %222, align 8
  %223 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %219, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %224 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %218, %_llgo_14 ], [ %223, %_llgo_15 ]
  %225 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %224, 0
  br i1 %225, label %_llgo_2, label %_llgo_3

_llgo_17:                                         ; preds = %_llgo_4
  %226 = extractvalue { i1, ptr, ptr } %49, 1
  %227 = extractvalue { i1, ptr, ptr } %49, 2
  %228 = load i64, ptr %226, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %227, align 8
  %230 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %231 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %230, i32 0, i32 0
  store i1 true, ptr %231, align 1
  %232 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %230, i32 0, i32 1
  store i64 %228, ptr %232, align 4
  %233 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %230, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %229, ptr %233, align 8
  %234 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %230, align 8
  br label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_4
  %235 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %236 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %235, i32 0, i32 0
  store i1 false, ptr %236, align 1
  %237 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %235, i32 0, i32 1
  store i64 0, ptr %237, align 4
  %238 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %235, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %238, align 8
  %239 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %235, align 8
  br label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18, %_llgo_17
  %240 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %234, %_llgo_17 ], [ %239, %_llgo_18 ]
  %241 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %240, 0
  br i1 %241, label %_llgo_5, label %_llgo_6

_llgo_20:                                         ; preds = %_llgo_11
  %242 = extractvalue { i1, ptr, ptr } %203, 1
  %243 = extractvalue { i1, ptr, ptr } %203, 2
  %244 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %242, align 8
  %245 = load i64, ptr %243, align 4
  %246 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %247 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %246, i32 0, i32 0
  store i1 true, ptr %247, align 1
  %248 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %246, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %244, ptr %248, align 8
  %249 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %246, i32 0, i32 2
  store i64 %245, ptr %249, align 4
  %250 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %246, align 8
  br label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_11
  %251 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %252 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %251, i32 0, i32 0
  store i1 false, ptr %252, align 1
  %253 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %251, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %253, align 8
  %254 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %251, i32 0, i32 2
  store i64 0, ptr %254, align 4
  %255 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %251, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %256 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %250, %_llgo_20 ], [ %255, %_llgo_21 ]
  %257 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %256, 0
  br i1 %257, label %_llgo_12, label %_llgo_13

_llgo_23:                                         ; preds = %_llgo_12
  %258 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %205, 1
  %259 = ptrtoint ptr %258 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %259)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %206)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_11

_llgo_24:                                         ; preds = %_llgo_12
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr @13, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 21, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = load ptr, ptr @_llgo_string, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %263, ptr %265, align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %266, i32 0, i32 0
  store ptr %264, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %266, i32 0, i32 1
  store ptr %265, ptr %268, align 8
  %269 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %266, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %269)
  unreachable
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
  %126 = load ptr, ptr @_llgo_string, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %128, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %129 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 0
  store ptr %131, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 1
  store i64 0, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 2
  store i64 0, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr @4, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 4, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr null, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 0, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %140, %"github.com/goplus/llgo/internal/runtime.String" %144, %"github.com/goplus/llgo/internal/runtime.Slice" %136)
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 0
  store ptr @0, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 1
  store i64 7, ptr %149, align 4
  %150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %147, align 8
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 0
  store ptr null, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 1
  store i64 0, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %151, align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %155)
  %157 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %150, ptr %156, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %154, i1 false)
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 0
  store ptr @1, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 1
  store i64 4, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %158, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr null, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 0, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  %166 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 0
  store ptr %166, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 1
  store i64 0, ptr %169, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 2
  store i64 0, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @4, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 4, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr null, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 0, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %175, %"github.com/goplus/llgo/internal/runtime.String" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %171)
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %180)
  %182 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %161, ptr %181, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %165, i1 false)
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 0
  store ptr @2, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 5, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr null, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 0, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %191)
  %193 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %186, ptr %192, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %190, i1 false)
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @3, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 8, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr null, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 0, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  %203 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %197, ptr %202, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %201, i1 false)
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 0
  store ptr @4, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 1
  store i64 4, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %204, align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %209 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %157, ptr %209, align 8
  %210 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %182, ptr %210, align 8
  %211 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %193, ptr %211, align 8
  %212 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %203, ptr %212, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 0
  store ptr %208, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 1
  store i64 4, ptr %215, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 2
  store i64 4, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, align 8
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %207, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %217)
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %145, ptr %146, ptr %218, i64 24)
  store ptr %219, ptr @"map[_llgo_any]_llgo_int", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %220 = load ptr, ptr @_llgo_main.N, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 0, i64 0)
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %222, i32 0, i32 6
  %224 = load i8, ptr %223, align 1
  %225 = or i8 %224, 32
  store i8 %225, ptr %223, align 1
  store ptr %222, ptr @_llgo_main.N, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %226 = load ptr, ptr @_llgo_int, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %228 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %228, i32 0, i32 6
  %230 = load i8, ptr %229, align 1
  %231 = or i8 %230, 32
  store i8 %231, ptr %229, align 1
  store ptr %228, ptr @_llgo_int, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %232 = load ptr, ptr @"[1]_llgo_int", align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %235 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %234)
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %235, i32 0, i32 6
  %237 = load i8, ptr %236, align 1
  %238 = or i8 %237, 32
  store i8 %238, ptr %236, align 1
  store ptr %235, ptr @"[1]_llgo_int", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %239 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %221, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %240 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 0
  store ptr @4, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 1
  store i64 4, ptr %242, align 4
  %243 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %240, align 8
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 0
  store ptr @12, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 1
  store i64 1, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %244, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %222, %"github.com/goplus/llgo/internal/runtime.String" %243, %"github.com/goplus/llgo/internal/runtime.String" %247, ptr %239, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
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

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")
