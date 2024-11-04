; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE" = linkonce global ptr null, align 8
@"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"f", align 1
@2 = private unnamed_addr constant [4 x i8] c"data", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [10 x i8] c"kind error", align 1
@_llgo_string = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"error", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @reflect.init()
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 11, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %6, ptr %2, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr inbounds { ptr }, ptr %7, i32 0, i32 0
  store ptr %2, ptr %8, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr @"main.main$1", ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %7, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = load ptr, ptr @_llgo_Pointer, align 8
  %14 = load ptr, ptr @_llgo_int, align 8
  %15 = load ptr, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  %16 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %16)
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %12, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr %17, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  %22 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  %23 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  %24 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %22)
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %24)
  %26 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %24, 0
  %27 = getelementptr ptr, ptr %26, i64 19
  %28 = load ptr, ptr %27, align 8
  %29 = alloca { ptr, ptr }, align 8
  %30 = getelementptr inbounds { ptr, ptr }, ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds { ptr, ptr }, ptr %29, i32 0, i32 1
  store ptr %25, ptr %31, align 8
  %32 = load { ptr, ptr }, ptr %29, align 8
  %33 = extractvalue { ptr, ptr } %32, 1
  %34 = extractvalue { ptr, ptr } %32, 0
  %35 = call i64 %34(ptr %33)
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %23)
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %23, 0
  %38 = getelementptr ptr, ptr %37, i64 19
  %39 = load ptr, ptr %38, align 8
  %40 = alloca { ptr, ptr }, align 8
  %41 = getelementptr inbounds { ptr, ptr }, ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, ptr }, ptr %40, i32 0, i32 1
  store ptr %36, ptr %42, align 8
  %43 = load { ptr, ptr }, ptr %40, align 8
  %44 = extractvalue { ptr, ptr } %43, 1
  %45 = extractvalue { ptr, ptr } %43, 0
  %46 = call i64 %45(ptr %44)
  %47 = icmp ne i64 %35, %46
  br i1 %47, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr @4, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 10, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  %52 = load ptr, ptr @_llgo_string, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %51, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, i32 0, i32 0
  store ptr %52, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, i32 0, i32 1
  store ptr %53, ptr %56, align 8
  %57 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %57)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_0
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %59 = getelementptr inbounds %reflect.Value, ptr %58, i64 0
  %60 = load ptr, ptr @_llgo_int, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 0
  store ptr %60, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %63, align 8
  %64 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, align 8
  %65 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %64)
  store %reflect.Value %65, ptr %59, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, i32 0, i32 0
  store ptr %58, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, i32 0, i32 1
  store i64 1, ptr %68, align 4
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, i32 0, i32 2
  store i64 1, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %66, align 8
  %71 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %22, %"github.com/goplus/llgo/internal/runtime.Slice" %70)
  %72 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %71, 0
  %73 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %71, 1
  %74 = icmp sge i64 0, %73
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %74)
  %75 = getelementptr inbounds %reflect.Value, ptr %72, i64 0
  %76 = load %reflect.Value, ptr %75, align 8
  %77 = call i64 @reflect.Value.Int(%reflect.Value %76)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %78 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %22)
  %79 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %78, 0
  %80 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %_llgo_6, label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_0
  %82 = icmp ne i64 %35, 19
  br i1 %82, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_8
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @5, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 5, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = load ptr, ptr @_llgo_string, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %86, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 0
  store ptr %87, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 1
  store ptr %88, ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %92)
  unreachable

_llgo_5:                                          ; preds = %_llgo_8
  %93 = extractvalue { ptr, ptr } %107, 1
  %94 = extractvalue { ptr, ptr } %107, 0
  %95 = call i64 %94(ptr %93, i64 100)
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_2
  %96 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %78, 1
  %97 = load { ptr, ptr }, ptr %96, align 8
  %98 = alloca { { ptr, ptr }, i1 }, align 8
  %99 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %98, i32 0, i32 0
  store { ptr, ptr } %97, ptr %99, align 8
  %100 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %98, i32 0, i32 1
  store i1 true, ptr %100, align 1
  %101 = load { { ptr, ptr }, i1 }, ptr %98, align 8
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  %102 = alloca { { ptr, ptr }, i1 }, align 8
  %103 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %102, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %103, align 8
  %104 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %102, i32 0, i32 1
  store i1 false, ptr %104, align 1
  %105 = load { { ptr, ptr }, i1 }, ptr %102, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %106 = phi { { ptr, ptr }, i1 } [ %101, %_llgo_6 ], [ %105, %_llgo_7 ]
  %107 = extractvalue { { ptr, ptr }, i1 } %106, 0
  %108 = extractvalue { { ptr, ptr }, i1 } %106, 1
  br i1 %108, label %_llgo_5, label %_llgo_4
}

define i64 @"main.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %5 = add i64 %1, 1
  ret i64 %5
}

declare void @reflect.init()

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
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 0
  store ptr %11, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 1
  store i64 2, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 2
  store i64 2, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %20 = getelementptr ptr, ptr %19, i64 0
  store ptr %8, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 0
  store ptr %19, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 1
  store i64 1, ptr %23, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 2
  store i64 1, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %18, %"github.com/goplus/llgo/internal/runtime.Slice" %25, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %26)
  store ptr %26, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %27 = load ptr, ptr @_llgo_Pointer, align 8
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = load ptr, ptr @_llgo_int, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @1, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 1, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %39 = getelementptr ptr, ptr %38, i64 0
  store ptr %27, ptr %39, align 8
  %40 = getelementptr ptr, ptr %38, i64 1
  store ptr %28, ptr %40, align 8
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, i32 0, i32 0
  store ptr %38, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, i32 0, i32 1
  store i64 2, ptr %43, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, i32 0, i32 2
  store i64 2, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %47 = getelementptr ptr, ptr %46, i64 0
  store ptr %29, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 1, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 1, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %45, %"github.com/goplus/llgo/internal/runtime.Slice" %52, i1 false)
  %54 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %33, ptr %53, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %37, i1 false)
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @2, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 4, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 0
  store ptr null, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 1
  store i64 0, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %59, align 8
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %64 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %58, ptr %63, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %62, i1 false)
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 0
  store ptr @3, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 1
  store i64 4, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %65, align 8
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %70 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %69, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %54, ptr %70, align 8
  %71 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %69, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %64, ptr %71, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 0
  store ptr %69, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 1
  store i64 2, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 2
  store i64 2, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %68, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %76)
  store ptr %77, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %78 = load ptr, ptr @_llgo_string, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %80, ptr @_llgo_string, align 8
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

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare i64 @reflect.Value.Int(%reflect.Value)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")
