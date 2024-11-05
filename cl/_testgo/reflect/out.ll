; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.T = type { i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"call.method", align 1
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE" = linkonce global ptr null, align 8
@"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"f", align 1
@2 = private unnamed_addr constant [4 x i8] c"data", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [7 x i8] c"closure", align 1
@5 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [12 x i8] c"call.closure", align 1
@7 = private unnamed_addr constant [4 x i8] c"func", align 1
@8 = private unnamed_addr constant [9 x i8] c"call.func", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"n", align 1
@11 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_main.T" = linkonce global ptr null, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [7 x i8] c"imethod", align 1
@14 = private unnamed_addr constant [6 x i8] c"method", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define i64 @"main.(*T).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 11, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = add i64 %7, %1
  %9 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 %8, ptr %9, align 4
  %10 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  ret i64 %11
}

define void @main.callClosure() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  store ptr @"main.callClosure$1", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  %6 = load { ptr, ptr }, ptr %3, align 8
  %7 = load ptr, ptr @_llgo_Pointer, align 8
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = load ptr, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  %10 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %10)
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %6, ptr %11, align 8
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 0
  store ptr %10, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 1
  store ptr %11, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, align 8
  %16 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %15)
  %17 = call i64 @reflect.Value.Kind(%reflect.Value %16)
  %18 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %16)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %18)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %18, 0
  %21 = getelementptr ptr, ptr %20, i64 31
  %22 = load ptr, ptr %21, align 8
  %23 = alloca { ptr, ptr }, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %23, i32 0, i32 1
  store ptr %19, ptr %25, align 8
  %26 = load { ptr, ptr }, ptr %23, align 8
  %27 = extractvalue { ptr, ptr } %26, 1
  %28 = extractvalue { ptr, ptr } %26, 0
  %29 = call %"github.com/goplus/llgo/internal/runtime.String" %28(ptr %27)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @4, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 7, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %35 = getelementptr inbounds %reflect.Value, ptr %34, i64 0
  %36 = load ptr, ptr @_llgo_int, align 8
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %37, i32 0, i32 0
  store ptr %36, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %37, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %39, align 8
  %40 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %37, align 8
  %41 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %40)
  store %reflect.Value %41, ptr %35, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %34, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 1, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %16, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, 0
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, 1
  %50 = icmp sge i64 0, %49
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %50)
  %51 = getelementptr inbounds %reflect.Value, ptr %48, i64 0
  %52 = load %reflect.Value, ptr %51, align 8
  %53 = call i64 @reflect.Value.Int(%reflect.Value %52)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %54 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %16)
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %54, 0
  %56 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 0
  store ptr @5, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 1
  store i64 5, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %58, align 8
  %62 = load ptr, ptr @_llgo_string, align 8
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %61, ptr %63, align 8
  %64 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %64, i32 0, i32 0
  store ptr %62, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %64, i32 0, i32 1
  store ptr %63, ptr %66, align 8
  %67 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %64, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %67)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %68 = extractvalue { ptr, ptr } %82, 1
  %69 = extractvalue { ptr, ptr } %82, 0
  %70 = call i64 %69(ptr %68, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %71 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %54, 1
  %72 = load { ptr, ptr }, ptr %71, align 8
  %73 = alloca { { ptr, ptr }, i1 }, align 8
  %74 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %73, i32 0, i32 0
  store { ptr, ptr } %72, ptr %74, align 8
  %75 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %73, i32 0, i32 1
  store i1 true, ptr %75, align 1
  %76 = load { { ptr, ptr }, i1 }, ptr %73, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %77 = alloca { { ptr, ptr }, i1 }, align 8
  %78 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %77, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %78, align 8
  %79 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %77, i32 0, i32 1
  store i1 false, ptr %79, align 1
  %80 = load { { ptr, ptr }, i1 }, ptr %77, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %81 = phi { { ptr, ptr }, i1 } [ %76, %_llgo_3 ], [ %80, %_llgo_4 ]
  %82 = extractvalue { { ptr, ptr }, i1 } %81, 0
  %83 = extractvalue { { ptr, ptr }, i1 } %81, 1
  br i1 %83, label %_llgo_2, label %_llgo_1
}

define i64 @"main.callClosure$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @6, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 12, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = load { ptr }, ptr %0, align 8
  %7 = extractvalue { ptr } %6, 0
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %8, %1
  %10 = add i64 %9, 1
  ret i64 %10
}

define void @main.callFunc() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 0
  store ptr @"__llgo_stub.main.callFunc$1", ptr %1, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = load { ptr, ptr }, ptr %0, align 8
  %4 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %4)
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 0
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, align 8
  %10 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %9)
  %11 = call i64 @reflect.Value.Kind(%reflect.Value %10)
  %12 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %10)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %12, 0
  %15 = getelementptr ptr, ptr %14, i64 31
  %16 = load ptr, ptr %15, align 8
  %17 = alloca { ptr, ptr }, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 1
  store ptr %13, ptr %19, align 8
  %20 = load { ptr, ptr }, ptr %17, align 8
  %21 = extractvalue { ptr, ptr } %20, 1
  %22 = extractvalue { ptr, ptr } %20, 0
  %23 = call %"github.com/goplus/llgo/internal/runtime.String" %22(ptr %21)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @7, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 4, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %27)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %29 = getelementptr inbounds %reflect.Value, ptr %28, i64 0
  %30 = load ptr, ptr @_llgo_int, align 8
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %31, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %33, align 8
  %34 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %31, align 8
  %35 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %34)
  store %reflect.Value %35, ptr %29, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, i32 0, i32 0
  store ptr %28, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, i32 0, i32 1
  store i64 1, ptr %38, align 4
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, i32 0, i32 2
  store i64 1, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %36, align 8
  %41 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %10, %"github.com/goplus/llgo/internal/runtime.Slice" %40)
  %42 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %41, 0
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %41, 1
  %44 = icmp sge i64 0, %43
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %44)
  %45 = getelementptr inbounds %reflect.Value, ptr %42, i64 0
  %46 = load %reflect.Value, ptr %45, align 8
  %47 = call i64 @reflect.Value.Int(%reflect.Value %46)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %48 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %10)
  %49 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %48, 0
  %50 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @5, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 5, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = load ptr, ptr @_llgo_string, align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %55, ptr %57, align 8
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 0
  store ptr %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 1
  store ptr %57, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %61)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %62 = extractvalue { ptr, ptr } %76, 1
  %63 = extractvalue { ptr, ptr } %76, 0
  %64 = call i64 %63(ptr %62, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %65 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %48, 1
  %66 = load { ptr, ptr }, ptr %65, align 8
  %67 = alloca { { ptr, ptr }, i1 }, align 8
  %68 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %67, i32 0, i32 0
  store { ptr, ptr } %66, ptr %68, align 8
  %69 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %67, i32 0, i32 1
  store i1 true, ptr %69, align 1
  %70 = load { { ptr, ptr }, i1 }, ptr %67, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %71 = alloca { { ptr, ptr }, i1 }, align 8
  %72 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %71, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %72, align 8
  %73 = getelementptr inbounds { { ptr, ptr }, i1 }, ptr %71, i32 0, i32 1
  store i1 false, ptr %73, align 1
  %74 = load { { ptr, ptr }, i1 }, ptr %71, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %75 = phi { { ptr, ptr }, i1 } [ %70, %_llgo_3 ], [ %74, %_llgo_4 ]
  %76 = extractvalue { { ptr, ptr }, i1 } %75, 0
  %77 = extractvalue { { ptr, ptr }, i1 } %75, 1
  br i1 %77, label %_llgo_2, label %_llgo_1
}

define i64 @"main.callFunc$1"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @8, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 9, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %5 = add i64 %0, 1
  ret i64 %5
}

define void @main.callIMethod() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @_llgo_main.T, align 8
  %3 = load ptr, ptr @"*_llgo_main.T", align 8
  %4 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %5 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %5, ptr %3)
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %10)
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %10, 1
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 0
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 1
  store ptr %12, ptr %15, align 8
  %16 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, align 8
  %17 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %16)
  %18 = call %reflect.Value @reflect.Value.Method(%reflect.Value %17, i64 0)
  %19 = call i64 @reflect.Value.Kind(%reflect.Value %18)
  %20 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %18)
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %20)
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %20, 0
  %23 = getelementptr ptr, ptr %22, i64 31
  %24 = load ptr, ptr %23, align 8
  %25 = alloca { ptr, ptr }, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds { ptr, ptr }, ptr %25, i32 0, i32 1
  store ptr %21, ptr %27, align 8
  %28 = load { ptr, ptr }, ptr %25, align 8
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  %31 = call %"github.com/goplus/llgo/internal/runtime.String" %30(ptr %29)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @13, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 7, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %35)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %31)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %37 = getelementptr inbounds %reflect.Value, ptr %36, i64 0
  %38 = load ptr, ptr @_llgo_int, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 0
  store ptr %38, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, align 8
  %43 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %42)
  store %reflect.Value %43, ptr %37, align 8
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 0
  store ptr %36, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 1
  store i64 1, ptr %46, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 2
  store i64 1, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, align 8
  %49 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %18, %"github.com/goplus/llgo/internal/runtime.Slice" %48)
  %50 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %49, 0
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %49, 1
  %52 = icmp sge i64 0, %51
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %52)
  %53 = getelementptr inbounds %reflect.Value, ptr %50, i64 0
  %54 = load %reflect.Value, ptr %53, align 8
  %55 = call i64 @reflect.Value.Int(%reflect.Value %54)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.callMethod() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @"*_llgo_main.T", align 8
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 1
  store ptr %0, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, align 8
  %7 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %6)
  %8 = call %reflect.Value @reflect.Value.Method(%reflect.Value %7, i64 0)
  %9 = call i64 @reflect.Value.Kind(%reflect.Value %8)
  %10 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %8)
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %10)
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %10, 0
  %13 = getelementptr ptr, ptr %12, i64 31
  %14 = load ptr, ptr %13, align 8
  %15 = alloca { ptr, ptr }, align 8
  %16 = getelementptr inbounds { ptr, ptr }, ptr %15, i32 0, i32 0
  store ptr %14, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, ptr }, ptr %15, i32 0, i32 1
  store ptr %11, ptr %17, align 8
  %18 = load { ptr, ptr }, ptr %15, align 8
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call %"github.com/goplus/llgo/internal/runtime.String" %20(ptr %19)
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @14, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 6, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %27 = getelementptr inbounds %reflect.Value, ptr %26, i64 0
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %31, align 8
  %32 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, align 8
  %33 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %32)
  store %reflect.Value %33, ptr %27, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 0
  store ptr %26, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 1
  store i64 1, ptr %36, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 2
  store i64 1, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, align 8
  %39 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %8, %"github.com/goplus/llgo/internal/runtime.Slice" %38)
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %39, 0
  %41 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %39, 1
  %42 = icmp sge i64 0, %41
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %42)
  %43 = getelementptr inbounds %reflect.Value, ptr %40, i64 0
  %44 = load %reflect.Value, ptr %43, align 8
  %45 = call i64 @reflect.Value.Int(%reflect.Value %44)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

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
  call void @main.callFunc()
  call void @main.callClosure()
  call void @main.callMethod()
  call void @main.callIMethod()
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface")

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
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 0
  store ptr @9, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 1
  store i64 6, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %81, align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %84, i64 25, i64 8, i64 0, i64 1)
  %86 = load ptr, ptr @_llgo_main.T, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %85, ptr @_llgo_main.T, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr @10, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 1, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr null, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 0, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %97 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %91, ptr %96, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %95, i1 false)
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 0
  store ptr @3, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 1
  store i64 4, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %98, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %103 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %102, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %97, ptr %103, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 0
  store ptr %102, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 1
  store i64 1, ptr %106, align 4
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, i32 0, i32 2
  store i64 1, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %104, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %101, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %108)
  store ptr %109, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %110 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %87, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 0
  store ptr @11, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %111, i32 0, i32 1
  store i64 3, ptr %113, align 4
  %114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %111, align 8
  %115 = load ptr, ptr @_llgo_int, align 8
  %116 = load ptr, ptr @_llgo_int, align 8
  %117 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 0
  store ptr @9, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 1
  store i64 6, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %119, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %122, i64 25, i64 8, i64 0, i64 1)
  %124 = load ptr, ptr @"*_llgo_main.T", align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %126 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %127 = getelementptr ptr, ptr %126, i64 0
  store ptr %115, ptr %127, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 0
  store ptr %126, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 1
  store i64 1, ptr %130, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 2
  store i64 1, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %134 = getelementptr ptr, ptr %133, i64 0
  store ptr %116, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %133, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 1, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 1, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %132, %"github.com/goplus/llgo/internal/runtime.Slice" %139, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %140)
  store ptr %140, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %141 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %142 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %114, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 1
  store ptr %141, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 2
  store ptr @"main.(*T).Add", ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 3
  store ptr @"main.(*T).Add", ptr %146, align 8
  %147 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %142, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %149 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %148, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %147, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 0
  store ptr %148, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 1
  store i64 1, ptr %152, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 2
  store i64 1, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, align 8
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @3, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 4, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr @12, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 1, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %85, %"github.com/goplus/llgo/internal/runtime.String" %158, %"github.com/goplus/llgo/internal/runtime.String" %162, ptr %110, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %154)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %123)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %163)
  store ptr %163, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %164 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %165 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 0
  store ptr @11, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 1
  store i64 3, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %167, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %171, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %170, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %171, i32 0, i32 1
  store ptr %164, ptr %173, align 8
  %174 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %171, align 8
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %176 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %174, ptr %176, align 8
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, i32 0, i32 0
  store ptr %175, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, i32 0, i32 1
  store i64 1, ptr %179, align 4
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, i32 0, i32 2
  store i64 1, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %177, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 0
  store ptr @3, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 1
  store i64 4, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %182, align 8
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr null, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 0, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %185, %"github.com/goplus/llgo/internal/runtime.String" %189, %"github.com/goplus/llgo/internal/runtime.Slice" %181)
  store ptr %190, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr)

declare i64 @reflect.Value.Kind(%reflect.Value)

declare %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare i64 @reflect.Value.Int(%reflect.Value)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

define linkonce i64 @"__llgo_stub.main.callFunc$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = tail call i64 @"main.callFunc$1"(i64 %1)
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

declare %reflect.Value @reflect.Value.Method(%reflect.Value, i64)

declare void @reflect.init()

declare void @"github.com/goplus/llgo/internal/runtime.init"()
