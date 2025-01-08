; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"$f", align 1
@1 = private unnamed_addr constant [5 x i8] c"$data", align 1
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 200, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"main.main$1", ptr undef }, ptr %3, 1
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %8 = load ptr, ptr @_llgo_Pointer, align 8
  %9 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %5, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %10, 1
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, 0
  %14 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %20 = extractvalue { ptr, ptr } %28, 1
  %21 = extractvalue { ptr, ptr } %28, 0
  %22 = call i64 %21(ptr %20, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, 1
  %24 = load { ptr, ptr }, ptr %23, align 8
  %25 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %24, 0
  %26 = insertvalue { { ptr, ptr }, i1 } %25, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %27 = phi { { ptr, ptr }, i1 } [ %26, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %28 = extractvalue { { ptr, ptr }, i1 } %27, 0
  %29 = extractvalue { { ptr, ptr }, i1 } %27, 1
  br i1 %29, label %_llgo_2, label %_llgo_1
}

define i64 @"main.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define void @"main.init$after"() {
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
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %17)
  store ptr %17, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %18 = load ptr, ptr @_llgo_Pointer, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %20)
  store ptr %20, ptr @_llgo_Pointer, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %21 = load ptr, ptr @_llgo_int, align 8
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %24 = getelementptr ptr, ptr %23, i64 0
  store ptr %21, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %29 = getelementptr ptr, ptr %28, i64 0
  store ptr %22, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 2
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i1 false)
  %34 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 2 }, ptr %33, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %36 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %35, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %37, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %34, ptr %38, align 8
  %39 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %37, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %36, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 2, 2
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42)
  store ptr %43, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %44 = load ptr, ptr @_llgo_string, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %46, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
