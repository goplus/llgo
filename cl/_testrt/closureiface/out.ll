; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE" = linkonce global ptr null, align 8
@"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"f", align 1
@1 = private unnamed_addr constant [4 x i8] c"data", align 1
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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store i64 200, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"main.main$1", ptr undef }, ptr %3, 1
  %6 = load ptr, ptr @_llgo_Pointer, align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = load ptr, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  %9 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %9)
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %5, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, ptr %10, 1
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %12, 0
  %14 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %18, ptr %17, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %19)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %20 = extractvalue { ptr, ptr } %28, 1
  %21 = extractvalue { ptr, ptr } %28, 0
  %22 = call i64 %21(ptr %20, i64 100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_0
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %12, 1
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

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_Pointer, align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = load ptr, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %6, ptr %12, align 8
  %13 = getelementptr ptr, ptr %11, i64 1
  store ptr %7, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %11, 0
  %15 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %14, i64 2, 1
  %16 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %15, i64 2, 2
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %18 = getelementptr ptr, ptr %17, i64 0
  store ptr %8, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %20, i64 1, 2
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %16, %"github.com/goplus/llgo/internal/runtime.Slice" %21, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %22)
  store ptr %22, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %23 = load ptr, ptr @_llgo_Pointer, align 8
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %27 = getelementptr ptr, ptr %26, i64 0
  store ptr %23, ptr %27, align 8
  %28 = getelementptr ptr, ptr %26, i64 1
  store ptr %24, ptr %28, align 8
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %26, 0
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %29, i64 2, 1
  %31 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %30, i64 2, 2
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %33 = getelementptr ptr, ptr %32, i64 0
  store ptr %25, ptr %33, align 8
  %34 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %32, 0
  %35 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %34, i64 1, 1
  %36 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %35, i64 1, 2
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %31, %"github.com/goplus/llgo/internal/runtime.Slice" %36, i1 false)
  %38 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 1 }, ptr %37, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %40 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, ptr %39, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %42 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %41, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %38, ptr %42, align 8
  %43 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %41, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %40, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %41, 0
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %44, i64 2, 1
  %46 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %45, i64 2, 2
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  store ptr %47, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %48 = load ptr, ptr @_llgo_string, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %50, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")
