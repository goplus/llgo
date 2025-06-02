; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureiface'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureiface"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/closureiface.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/closureiface.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"$f", align 1
@1 = private unnamed_addr constant [5 x i8] c"$data", align 1
@2 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testrt/closureiface", align 1
@3 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testrt/closureiface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/closureiface.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureiface.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 200, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.main$1", ptr undef }, ptr %1, 1
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %6 = load ptr, ptr @_llgo_Pointer, align 8
  %7 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, 0
  %12 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %14 = load ptr, ptr @_llgo_string, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %18)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %19 = extractvalue { ptr, ptr } %27, 1
  %20 = extractvalue { ptr, ptr } %27, 0
  %21 = call i64 %20(ptr %19, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, 1
  %23 = load { ptr, ptr }, ptr %22, align 8
  %24 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %23, 0
  %25 = insertvalue { { ptr, ptr }, i1 } %24, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %26 = phi { { ptr, ptr }, i1 } [ %25, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %27 = extractvalue { { ptr, ptr }, i1 } %26, 0
  %28 = extractvalue { { ptr, ptr }, i1 } %26, 1
  br i1 %28, label %_llgo_2, label %_llgo_1
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureiface.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define void @"github.com/goplus/llgo/cl/_testrt/closureiface.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %3, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %13 = getelementptr ptr, ptr %12, i64 0
  store ptr %4, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 2
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %17, ptr %18, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %19)
  store ptr %19, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %20 = load ptr, ptr @_llgo_Pointer, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %22)
  store ptr %22, ptr @_llgo_Pointer, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %26 = getelementptr ptr, ptr %25, i64 0
  store ptr %23, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 1, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 2
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %31 = getelementptr ptr, ptr %30, i64 0
  store ptr %24, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 1, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 2
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %35, ptr %36, i1 false)
  %38 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 2 }, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %40, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %38, ptr %39, ptr %37, i64 0, ptr %40, i1 false)
  %41 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %38, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %43 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %44, align 8
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %45, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %43, ptr %44, ptr %42, i64 8, ptr %45, i1 false)
  %46 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %43, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %48 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %41, ptr %48, align 8
  %49 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %46, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 2, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 2, 2
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 46 }, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %53, i64 16, ptr %54)
  store ptr %55, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %56 = load ptr, ptr @_llgo_string, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %58, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)
