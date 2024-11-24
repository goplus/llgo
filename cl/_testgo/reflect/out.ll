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
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 11 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %2 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  %5 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 %4, ptr %5, align 4
  %6 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  ret i64 %7
}

define void @main.callClosure() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"main.callClosure$1", ptr undef }, ptr %1, 1
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = load ptr, ptr @"_llgo_func$LW7NaHY4krmx4VSCwrrjp23xg526aJ8NlR7kN98tIyE", align 8
  %7 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %7)
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, ptr %8, 1
  %11 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %10)
  %12 = call i64 @reflect.Value.Kind(%reflect.Value %11)
  %13 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %11)
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %13)
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %13, 0
  %16 = getelementptr ptr, ptr %15, i64 31
  %17 = load ptr, ptr %16, align 8
  %18 = insertvalue { ptr, ptr } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr } %19, 1
  %21 = extractvalue { ptr, ptr } %19, 0
  %22 = call %"github.com/goplus/llgo/internal/runtime.String" %21(ptr %20)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %12)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %24 = getelementptr inbounds %reflect.Value, ptr %23, i64 0
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %26, ptr inttoptr (i64 100 to ptr), 1
  %28 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %27)
  store %reflect.Value %28, ptr %24, align 8
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %23, 0
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %29, i64 1, 1
  %31 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %30, i64 1, 2
  %32 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %11, %"github.com/goplus/llgo/internal/runtime.Slice" %31)
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %32, 0
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %32, 1
  %35 = icmp sge i64 0, %34
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %35)
  %36 = getelementptr inbounds %reflect.Value, ptr %33, i64 0
  %37 = load %reflect.Value, ptr %36, align 8
  %38 = call i64 @reflect.Value.Int(%reflect.Value %37)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %39 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %11)
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %39, 0
  %41 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %43 = load ptr, ptr @_llgo_string, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %45, ptr %44, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %46)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %47 = extractvalue { ptr, ptr } %55, 1
  %48 = extractvalue { ptr, ptr } %55, 0
  %49 = call i64 %48(ptr %47, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %50 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %39, 1
  %51 = load { ptr, ptr }, ptr %50, align 8
  %52 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %51, 0
  %53 = insertvalue { { ptr, ptr }, i1 } %52, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %54 = phi { { ptr, ptr }, i1 } [ %53, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %55 = extractvalue { { ptr, ptr }, i1 } %54, 0
  %56 = extractvalue { { ptr, ptr }, i1 } %54, 1
  br i1 %56, label %_llgo_2, label %_llgo_1
}

define i64 @"main.callClosure$1"(ptr %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 12 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  %6 = add i64 %5, 1
  ret i64 %6
}

define void @main.callFunc() {
_llgo_0:
  %0 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  call void @"github.com/goplus/llgo/internal/runtime.SetClosure"(ptr %0)
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.main.callFunc$1", ptr null }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, ptr %1, 1
  %4 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %3)
  %5 = call i64 @reflect.Value.Kind(%reflect.Value %4)
  %6 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %4)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 31
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" %14(ptr %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 4 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %17 = getelementptr inbounds %reflect.Value, ptr %16, i64 0
  %18 = load ptr, ptr @_llgo_int, align 8
  %19 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %19, ptr inttoptr (i64 100 to ptr), 1
  %21 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %20)
  store %reflect.Value %21, ptr %17, align 8
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %16, 0
  %23 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, i64 1, 1
  %24 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %23, i64 1, 2
  %25 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %4, %"github.com/goplus/llgo/internal/runtime.Slice" %24)
  %26 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %25, 0
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %25, 1
  %28 = icmp sge i64 0, %27
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %28)
  %29 = getelementptr inbounds %reflect.Value, ptr %26, i64 0
  %30 = load %reflect.Value, ptr %29, align 8
  %31 = call i64 @reflect.Value.Int(%reflect.Value %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %32 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %4)
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %32, 0
  %34 = load ptr, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %36 = load ptr, ptr @_llgo_string, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %36, 0
  %39 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %38, ptr %37, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %39)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %40 = extractvalue { ptr, ptr } %48, 1
  %41 = extractvalue { ptr, ptr } %48, 0
  %42 = call i64 %41(ptr %40, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %32, 1
  %44 = load { ptr, ptr }, ptr %43, align 8
  %45 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %44, 0
  %46 = insertvalue { { ptr, ptr }, i1 } %45, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %47 = phi { { ptr, ptr }, i1 } [ %46, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %48 = extractvalue { { ptr, ptr }, i1 } %47, 0
  %49 = extractvalue { { ptr, ptr }, i1 } %47, 1
  br i1 %49, label %_llgo_2, label %_llgo_1
}

define i64 @"main.callFunc$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 9 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %1 = add i64 %0, 1
  ret i64 %1
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
  %7 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %7, ptr %0, 1
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %8, 1
  %11 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, ptr %10, 1
  %13 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %12)
  %14 = call %reflect.Value @reflect.Value.Method(%reflect.Value %13, i64 0)
  %15 = call i64 @reflect.Value.Kind(%reflect.Value %14)
  %16 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %14)
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %16)
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %16, 0
  %19 = getelementptr ptr, ptr %18, i64 31
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call %"github.com/goplus/llgo/internal/runtime.String" %24(ptr %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 7 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %27 = getelementptr inbounds %reflect.Value, ptr %26, i64 0
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %29, ptr inttoptr (i64 100 to ptr), 1
  %31 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %30)
  store %reflect.Value %31, ptr %27, align 8
  %32 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %26, 0
  %33 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %32, i64 1, 1
  %34 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %33, i64 1, 2
  %35 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %14, %"github.com/goplus/llgo/internal/runtime.Slice" %34)
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %35, 0
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %35, 1
  %38 = icmp sge i64 0, %37
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %38)
  %39 = getelementptr inbounds %reflect.Value, ptr %36, i64 0
  %40 = load %reflect.Value, ptr %39, align 8
  %41 = call i64 @reflect.Value.Int(%reflect.Value %40)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %42 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %14)
  %43 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %42)
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %45 = getelementptr inbounds %reflect.Value, ptr %44, i64 0
  %46 = load ptr, ptr @_llgo_int, align 8
  %47 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %46, 0
  %48 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %47, ptr inttoptr (i64 100 to ptr), 1
  %49 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %48)
  store %reflect.Value %49, ptr %45, align 8
  %50 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %44, 0
  %51 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %50, i64 1, 1
  %52 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %51, i64 1, 2
  %53 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %43, %"github.com/goplus/llgo/internal/runtime.Slice" %52)
  %54 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %53, 0
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %53, 1
  %56 = icmp sge i64 0, %55
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %56)
  %57 = getelementptr inbounds %reflect.Value, ptr %54, i64 0
  %58 = load %reflect.Value, ptr %57, align 8
  %59 = call i64 @reflect.Value.Int(%reflect.Value %58)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.callMethod() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @"*_llgo_main.T", align 8
  %3 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %3, ptr %0, 1
  %5 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %4)
  %6 = call %reflect.Value @reflect.Value.Method(%reflect.Value %5, i64 0)
  %7 = call i64 @reflect.Value.Kind(%reflect.Value %6)
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %8, 0
  %11 = getelementptr ptr, ptr %10, i64 31
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call %"github.com/goplus/llgo/internal/runtime.String" %16(ptr %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @14, i64 6 })
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %19 = getelementptr inbounds %reflect.Value, ptr %18, i64 0
  %20 = load ptr, ptr @_llgo_int, align 8
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %21, ptr inttoptr (i64 100 to ptr), 1
  %23 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %22)
  store %reflect.Value %23, ptr %19, align 8
  %24 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %18, 0
  %25 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %24, i64 1, 1
  %26 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %25, i64 1, 2
  %27 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"github.com/goplus/llgo/internal/runtime.Slice" %26)
  %28 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %27, 0
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %27, 1
  %30 = icmp sge i64 0, %29
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %30)
  %31 = getelementptr inbounds %reflect.Value, ptr %28, i64 0
  %32 = load %reflect.Value, ptr %31, align 8
  %33 = call i64 @reflect.Value.Int(%reflect.Value %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %34 = call %"github.com/goplus/llgo/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %6)
  %35 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %34)
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %37 = getelementptr inbounds %reflect.Value, ptr %36, i64 0
  %38 = load ptr, ptr @_llgo_int, align 8
  %39 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %39, ptr inttoptr (i64 100 to ptr), 1
  %41 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/internal/runtime.eface" %40)
  store %reflect.Value %41, ptr %37, align 8
  %42 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %36, 0
  %43 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %42, i64 1, 1
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %43, i64 1, 2
  %45 = call %"github.com/goplus/llgo/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %35, %"github.com/goplus/llgo/internal/runtime.Slice" %44)
  %46 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %45, 0
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %45, 1
  %48 = icmp sge i64 0, %47
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %48)
  %49 = getelementptr inbounds %reflect.Value, ptr %46, i64 0
  %50 = load %reflect.Value, ptr %49, align 8
  %51 = call i64 @reflect.Value.Int(%reflect.Value %50)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %51)
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
  %38 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 1 }, ptr %37, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %40 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 4 }, ptr %39, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %42 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %41, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %38, ptr %42, align 8
  %43 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %41, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %40, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %41, 0
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %44, i64 2, 1
  %46 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %45, i64 2, 2
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  store ptr %47, ptr @"main.struct$J4GOle3xvLePlAXZSFNKiHRJ-WQyyOMhvl8OQfxW2Q8", align 8
  %48 = load ptr, ptr @_llgo_string, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %50, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 6 }, i64 25, i64 8, i64 0, i64 1)
  %52 = load ptr, ptr @_llgo_main.T, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %51, ptr @_llgo_main.T, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %55 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 1 }, ptr %54, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %57 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %56, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %55, ptr %57, align 8
  %58 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %56, 0
  %59 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %58, i64 1, 1
  %60 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %59, i64 1, 2
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %60)
  store ptr %61, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %62 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %53, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %63 = load ptr, ptr @_llgo_int, align 8
  %64 = load ptr, ptr @_llgo_int, align 8
  %65 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 6 }, i64 25, i64 8, i64 0, i64 1)
  %68 = load ptr, ptr @"*_llgo_main.T", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %71 = getelementptr ptr, ptr %70, i64 0
  store ptr %63, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %70, 0
  %73 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %72, i64 1, 1
  %74 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %73, i64 1, 2
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %76 = getelementptr ptr, ptr %75, i64 0
  store ptr %64, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %75, 0
  %78 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %77, i64 1, 1
  %79 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %78, i64 1, 2
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %74, %"github.com/goplus/llgo/internal/runtime.Slice" %79, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %80)
  store ptr %80, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %81 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %82 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %81, 1
  %83 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %82, ptr @"main.(*T).Add", 2
  %84 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %83, ptr @"main.(*T).Add", 3
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %86 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %84, ptr %86, align 8
  %87 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %85, 0
  %88 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %87, i64 1, 1
  %89 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %88, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %51, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 1 }, ptr %62, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %89)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %67)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %90)
  store ptr %90, ptr @"*_llgo_main.T", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %91 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %92 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %94 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 3 }, ptr undef }, ptr %91, 1
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %96 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %94, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %95, 0
  %98 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %97, i64 1, 1
  %99 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %98, i64 1, 2
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %99)
  store ptr %100, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
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
