; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%main.T = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"call.method", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@2 = private unnamed_addr constant [5 x i8] c"$data", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [7 x i8] c"closure", align 1
@5 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [12 x i8] c"call.closure", align 1
@7 = private unnamed_addr constant [4 x i8] c"func", align 1
@8 = private unnamed_addr constant [9 x i8] c"call.func", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"T", align 1
@"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"n", align 1
@11 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"*_llgo_main.T" = linkonce global ptr null, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [7 x i8] c"imethod", align 1
@13 = private unnamed_addr constant [6 x i8] c"method", align 1
@_llgo_any = linkonce global ptr null, align 8
@"[]_llgo_any" = linkonce global ptr null, align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" = linkonce global ptr null, align 8
@"main.struct$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [10 x i8] c"call.slice", align 1
@15 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@17 = private unnamed_addr constant [4 x i8] c"keys", align 1
@18 = private unnamed_addr constant [5 x i8] c"elems", align 1
@19 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@20 = private unnamed_addr constant [5 x i8] c"hello", align 1
@21 = private unnamed_addr constant [5 x i8] c"world", align 1
@22 = private unnamed_addr constant [14 x i8] c"MapIndex error", align 1
@23 = private unnamed_addr constant [4 x i8] c"todo", align 1
@24 = private unnamed_addr constant [12 x i8] c"must invalid", align 1
@25 = private unnamed_addr constant [13 x i8] c"MapIter error", align 1

define i64 @"main.(*T).Add"(ptr %0, i64 %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"main.callClosure$1", ptr undef }, ptr %1, 1
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %6 = load ptr, ptr @_llgo_Pointer, align 8
  %7 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  %11 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = call i64 @reflect.Value.Kind(%reflect.Value %11)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %11)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %13)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, 0
  %16 = getelementptr ptr, ptr %15, i64 37
  %17 = load ptr, ptr %16, align 8
  %18 = insertvalue { ptr, ptr } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr } %19, 1
  %21 = extractvalue { ptr, ptr } %19, 0
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %21(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %24 = getelementptr inbounds %reflect.Value, ptr %23, i64 0
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr inttoptr (i64 100 to ptr), 1
  %28 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  store %reflect.Value %28, ptr %24, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 2
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31)
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 0
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 1
  %35 = icmp sge i64 0, %34
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %35)
  %36 = getelementptr inbounds %reflect.Value, ptr %33, i64 0
  %37 = load %reflect.Value, ptr %36, align 8
  %38 = call i64 @reflect.Value.Int(%reflect.Value %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %11)
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, 0
  %41 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %43 = load ptr, ptr @_llgo_string, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %46)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %47 = extractvalue { ptr, ptr } %55, 1
  %48 = extractvalue { ptr, ptr } %55, 0
  %49 = call i64 %48(ptr %47, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, 1
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  %6 = add i64 %5, 1
  ret i64 %6
}

define void @main.callFunc() {
_llgo_0:
  %0 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.main.callFunc$1", ptr null }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  %5 = call i64 @reflect.Value.Kind(%reflect.Value %4)
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %4)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 37
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %14(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %17 = getelementptr inbounds %reflect.Value, ptr %16, i64 0
  %18 = load ptr, ptr @_llgo_int, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr inttoptr (i64 100 to ptr), 1
  %21 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  store %reflect.Value %21, ptr %17, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 2
  %25 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, 0
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, 1
  %28 = icmp sge i64 0, %27
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %28)
  %29 = getelementptr inbounds %reflect.Value, ptr %26, i64 0
  %30 = load %reflect.Value, ptr %29, align 8
  %31 = call i64 @reflect.Value.Int(%reflect.Value %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %4)
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, 0
  %34 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %36 = load ptr, ptr @_llgo_string, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %37, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %40 = extractvalue { ptr, ptr } %48, 1
  %41 = extractvalue { ptr, ptr } %48, 0
  %42 = call i64 %41(ptr %40, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, 1
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = add i64 %0, 1
  ret i64 %1
}

define void @main.callIMethod() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @_llgo_main.T, align 8
  %3 = load ptr, ptr @"*_llgo_main.T", align 8
  %4 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %5 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %3)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %10, 1
  %13 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  %14 = call %reflect.Value @reflect.Value.Method(%reflect.Value %13, i64 0)
  %15 = call i64 @reflect.Value.Kind(%reflect.Value %14)
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %14)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 0
  %19 = getelementptr ptr, ptr %18, i64 37
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %24(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %27 = getelementptr inbounds %reflect.Value, ptr %26, i64 0
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr inttoptr (i64 100 to ptr), 1
  %31 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  store %reflect.Value %31, ptr %27, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 1, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 2
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %14, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 0
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, 1
  %38 = icmp sge i64 0, %37
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %38)
  %39 = getelementptr inbounds %reflect.Value, ptr %36, i64 0
  %40 = load %reflect.Value, ptr %39, align 8
  %41 = call i64 @reflect.Value.Int(%reflect.Value %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %42 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %14)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, 0
  %44 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %46 = load ptr, ptr @_llgo_string, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %50 = extractvalue { ptr, ptr } %76, 1
  %51 = extractvalue { ptr, ptr } %76, 0
  %52 = call i64 %51(ptr %50, i64 1)
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %14)
  %54 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %56 = getelementptr inbounds %reflect.Value, ptr %55, i64 0
  %57 = load ptr, ptr @_llgo_int, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr inttoptr (i64 100 to ptr), 1
  %60 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  store %reflect.Value %60, ptr %56, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 1, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 1, 2
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %54, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 0
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 1
  %67 = icmp sge i64 0, %66
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %67)
  %68 = getelementptr inbounds %reflect.Value, ptr %65, i64 0
  %69 = load %reflect.Value, ptr %68, align 8
  %70 = call i64 @reflect.Value.Int(%reflect.Value %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, 1
  %72 = load { ptr, ptr }, ptr %71, align 8
  %73 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %72, 0
  %74 = insertvalue { { ptr, ptr }, i1 } %73, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %75 = phi { { ptr, ptr }, i1 } [ %74, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %76 = extractvalue { { ptr, ptr }, i1 } %75, 0
  %77 = extractvalue { { ptr, ptr }, i1 } %75, 1
  br i1 %77, label %_llgo_2, label %_llgo_1
}

define void @main.callMethod() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @"*_llgo_main.T", align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %0, 1
  %5 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  %6 = call %reflect.Value @reflect.Value.Method(%reflect.Value %5, i64 0)
  %7 = call i64 @reflect.Value.Kind(%reflect.Value %6)
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %6)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %11 = getelementptr ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %16(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %19 = getelementptr inbounds %reflect.Value, ptr %18, i64 0
  %20 = load ptr, ptr @_llgo_int, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr inttoptr (i64 100 to ptr), 1
  %23 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  store %reflect.Value %23, ptr %19, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 2
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, 0
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, 1
  %30 = icmp sge i64 0, %29
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %30)
  %31 = getelementptr inbounds %reflect.Value, ptr %28, i64 0
  %32 = load %reflect.Value, ptr %31, align 8
  %33 = call i64 @reflect.Value.Int(%reflect.Value %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %6)
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, 0
  %36 = load ptr, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %42 = extractvalue { ptr, ptr } %68, 1
  %43 = extractvalue { ptr, ptr } %68, 0
  %44 = call i64 %43(ptr %42, i64 1)
  %45 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %6)
  %46 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %48 = getelementptr inbounds %reflect.Value, ptr %47, i64 0
  %49 = load ptr, ptr @_llgo_int, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr inttoptr (i64 100 to ptr), 1
  %52 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %51)
  store %reflect.Value %52, ptr %48, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 1, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 1, 2
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %46, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 0
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 1
  %59 = icmp sge i64 0, %58
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %59)
  %60 = getelementptr inbounds %reflect.Value, ptr %57, i64 0
  %61 = load %reflect.Value, ptr %60, align 8
  %62 = call i64 @reflect.Value.Int(%reflect.Value %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, 1
  %64 = load { ptr, ptr }, ptr %63, align 8
  %65 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %64, 0
  %66 = insertvalue { { ptr, ptr }, i1 } %65, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %67 = phi { { ptr, ptr }, i1 } [ %66, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %68 = extractvalue { { ptr, ptr }, i1 } %67, 0
  %69 = extractvalue { { ptr, ptr }, i1 } %67, 1
  br i1 %69, label %_llgo_2, label %_llgo_1
}

define void @main.callSlice() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_any, align 8
  %1 = load ptr, ptr @"[]_llgo_any", align 8
  %2 = load ptr, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", align 8
  %3 = load ptr, ptr @"main.struct$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.main.demo, ptr null }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6)
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr inttoptr (i64 1 to ptr), 1
  %11 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288)
  %13 = getelementptr inbounds %reflect.Value, ptr %12, i64 0
  store %reflect.Value %11, ptr %13, align 8
  %14 = getelementptr inbounds %reflect.Value, ptr %12, i64 1
  store %reflect.Value %11, ptr %14, align 8
  %15 = getelementptr inbounds %reflect.Value, ptr %12, i64 2
  store %reflect.Value %11, ptr %15, align 8
  %16 = getelementptr inbounds %reflect.Value, ptr %12, i64 3
  store %reflect.Value %11, ptr %16, align 8
  %17 = getelementptr inbounds %reflect.Value, ptr %12, i64 4
  store %reflect.Value %11, ptr %17, align 8
  %18 = getelementptr inbounds %reflect.Value, ptr %12, i64 5
  store %reflect.Value %11, ptr %18, align 8
  %19 = getelementptr inbounds %reflect.Value, ptr %12, i64 6
  store %reflect.Value %11, ptr %19, align 8
  %20 = getelementptr inbounds %reflect.Value, ptr %12, i64 7
  store %reflect.Value %11, ptr %20, align 8
  %21 = getelementptr inbounds %reflect.Value, ptr %12, i64 8
  store %reflect.Value %11, ptr %21, align 8
  %22 = getelementptr inbounds %reflect.Value, ptr %12, i64 9
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr inttoptr (i64 1 to ptr), 1
  %26 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  store %reflect.Value %26, ptr %22, align 8
  %27 = getelementptr inbounds %reflect.Value, ptr %12, i64 10
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr inttoptr (i64 2 to ptr), 1
  %31 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %30)
  store %reflect.Value %31, ptr %27, align 8
  %32 = getelementptr inbounds %reflect.Value, ptr %12, i64 11
  %33 = load ptr, ptr @_llgo_int, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr inttoptr (i64 3 to ptr), 1
  %36 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  store %reflect.Value %36, ptr %32, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 12, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 12, 2
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %43 = icmp sge i64 0, %42
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %43)
  %44 = getelementptr inbounds %reflect.Value, ptr %41, i64 0
  %45 = load %reflect.Value, ptr %44, align 8
  %46 = call i64 @reflect.Value.Int(%reflect.Value %45)
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %49 = icmp sge i64 1, %48
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %49)
  %50 = getelementptr inbounds %reflect.Value, ptr %47, i64 1
  %51 = load %reflect.Value, ptr %50, align 8
  %52 = call i64 @reflect.Value.Int(%reflect.Value %51)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 240)
  %54 = getelementptr inbounds %reflect.Value, ptr %53, i64 0
  store %reflect.Value %11, ptr %54, align 8
  %55 = getelementptr inbounds %reflect.Value, ptr %53, i64 1
  store %reflect.Value %11, ptr %55, align 8
  %56 = getelementptr inbounds %reflect.Value, ptr %53, i64 2
  store %reflect.Value %11, ptr %56, align 8
  %57 = getelementptr inbounds %reflect.Value, ptr %53, i64 3
  store %reflect.Value %11, ptr %57, align 8
  %58 = getelementptr inbounds %reflect.Value, ptr %53, i64 4
  store %reflect.Value %11, ptr %58, align 8
  %59 = getelementptr inbounds %reflect.Value, ptr %53, i64 5
  store %reflect.Value %11, ptr %59, align 8
  %60 = getelementptr inbounds %reflect.Value, ptr %53, i64 6
  store %reflect.Value %11, ptr %60, align 8
  %61 = getelementptr inbounds %reflect.Value, ptr %53, i64 7
  store %reflect.Value %11, ptr %61, align 8
  %62 = getelementptr inbounds %reflect.Value, ptr %53, i64 8
  store %reflect.Value %11, ptr %62, align 8
  %63 = getelementptr inbounds %reflect.Value, ptr %53, i64 9
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %64, i64 0
  %66 = load ptr, ptr @_llgo_int, align 8
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %68, ptr %65, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %64, i64 1
  %70 = load ptr, ptr @_llgo_int, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr inttoptr (i64 2 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %69, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %64, i64 2
  %74 = load ptr, ptr @_llgo_int, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %74, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr inttoptr (i64 3 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %73, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 3, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 3, 2
  %80 = load ptr, ptr @"[]_llgo_any", align 8
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, ptr %81, align 8
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %80, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, ptr %81, 1
  %84 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %83)
  store %reflect.Value %84, ptr %63, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 10, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 10, 2
  %88 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87)
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 0
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 1
  %91 = icmp sge i64 0, %90
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %91)
  %92 = getelementptr inbounds %reflect.Value, ptr %89, i64 0
  %93 = load %reflect.Value, ptr %92, align 8
  %94 = call i64 @reflect.Value.Int(%reflect.Value %93)
  %95 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 0
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 1
  %97 = icmp sge i64 1, %96
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %97)
  %98 = getelementptr inbounds %reflect.Value, ptr %95, i64 1
  %99 = load %reflect.Value, ptr %98, align 8
  %100 = call i64 @reflect.Value.Int(%reflect.Value %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 10 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define { i64, i64 } @main.demo(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9) {
_llgo_0:
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi i64 [ 0, %_llgo_0 ], [ %37, %_llgo_4 ]
  %12 = phi i64 [ -1, %_llgo_0 ], [ %13, %_llgo_4 ]
  %13 = add i64 %12, 1
  %14 = icmp slt i64 %13, %10
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 1
  %17 = icmp slt i64 %13, 0
  %18 = icmp sge i64 %13, %16
  %19 = or i1 %18, %17
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %15, i64 %13
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %20, align 8
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, 0
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %25 = add i64 %0, %1
  %26 = add i64 %25, %2
  %27 = add i64 %26, %3
  %28 = add i64 %27, %4
  %29 = add i64 %28, %5
  %30 = add i64 %29, %6
  %31 = add i64 %30, %7
  %32 = add i64 %31, %8
  %33 = insertvalue { i64, i64 } undef, i64 %32, 0
  %34 = insertvalue { i64, i64 } %33, i64 %11, 1
  ret { i64, i64 } %34

_llgo_4:                                          ; preds = %_llgo_2
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, 1
  %36 = ptrtoint ptr %35 to i64
  %37 = add i64 %11, %36
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_2
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 21 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @main.callSlice()
  call void @main.callFunc()
  call void @main.callClosure()
  call void @main.callMethod()
  call void @main.callIMethod()
  call void @main.mapDemo1()
  call void @main.mapDemo2()
  ret i32 0
}

define void @main.mapDemo1() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %0, i64 2)
  %2 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %2, ptr %1, ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %4, align 8
  %5 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %5, ptr %1, ptr %6)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %7, align 8
  %8 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %1, 1
  %11 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = call i64 @reflect.Value.Len(%reflect.Value %11)
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %14 = load ptr, ptr @_llgo_string, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %18 = load ptr, ptr @_llgo_int, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr inttoptr (i64 2 to ptr), 1
  %21 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  %22 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %11, %reflect.Value %21)
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %22)
  %24 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %23, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 })
  %25 = xor i1 %24, true
  br i1 %25, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %26 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %11)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 1
  %28 = icmp ne i64 %27, 2
  br i1 %28, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %29 = load ptr, ptr @_llgo_string, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %30, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %33 = load ptr, ptr @_llgo_int, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr inttoptr (i64 2 to ptr), 1
  %36 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %37, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %38, 1
  %41 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
  call void @reflect.Value.SetMapIndex(%reflect.Value %11, %reflect.Value %36, %reflect.Value %41)
  %42 = load ptr, ptr @_llgo_int, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr inttoptr (i64 2 to ptr), 1
  %45 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  %46 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %11, %reflect.Value %45)
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %46)
  %48 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %47, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 })
  %49 = xor i1 %48, true
  br i1 %49, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %54 = load ptr, ptr @_llgo_int, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr null, 1
  %57 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %56)
  %58 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %11, %reflect.Value %57)
  %59 = call i1 @reflect.Value.IsValid(%reflect.Value %58)
  br i1 %59, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %60 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %11)
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %60)
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, 0
  %63 = getelementptr ptr, ptr %62, i64 20
  %64 = load ptr, ptr %63, align 8
  %65 = insertvalue { ptr, ptr } undef, ptr %64, 0
  %66 = insertvalue { ptr, ptr } %65, ptr %61, 1
  %67 = extractvalue { ptr, ptr } %66, 1
  %68 = extractvalue { ptr, ptr } %66, 0
  %69 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %68(ptr %67)
  %70 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %69)
  %71 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %70)
  %72 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %11)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %72)
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72, 0
  %75 = getelementptr ptr, ptr %74, i64 11
  %76 = load ptr, ptr %75, align 8
  %77 = insertvalue { ptr, ptr } undef, ptr %76, 0
  %78 = insertvalue { ptr, ptr } %77, ptr %73, 1
  %79 = extractvalue { ptr, ptr } %78, 1
  %80 = extractvalue { ptr, ptr } %78, 0
  %81 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %80(ptr %79)
  %82 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %81)
  %83 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %82)
  %84 = call ptr @reflect.Value.MapRange(%reflect.Value %11)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  call void @reflect.Value.SetIterKey(%reflect.Value %71, ptr %84)
  call void @reflect.Value.SetIterValue(%reflect.Value %83, ptr %84)
  %85 = call i64 @reflect.Value.Int(%reflect.Value %71)
  %86 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %84)
  %87 = call i64 @reflect.Value.Int(%reflect.Value %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %89 = call i1 @"reflect.(*MapIter).Next"(ptr %84)
  br i1 %89, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %90 = load ptr, ptr @_llgo_string, align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 13 }, ptr %91, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %90, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %92, ptr %91, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %93)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %94 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %83)
  %95 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %84)
  %96 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %95)
  %97 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %94, %"github.com/goplus/llgo/runtime/internal/runtime.String" %96)
  %98 = xor i1 %97, true
  br i1 %98, label %_llgo_13, label %_llgo_12
}

define void @main.mapDemo2() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr null, 1
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = call %reflect.Value @reflect.MakeMap(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr inttoptr (i64 1 to ptr), 1
  %14 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  %15 = load ptr, ptr @_llgo_string, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %16, 1
  %19 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  call void @reflect.Value.SetMapIndex(%reflect.Value %10, %reflect.Value %14, %reflect.Value %19)
  %20 = load ptr, ptr @_llgo_int, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr inttoptr (i64 2 to ptr), 1
  %23 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  %24 = load ptr, ptr @_llgo_string, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %25, 1
  %28 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  call void @reflect.Value.SetMapIndex(%reflect.Value %10, %reflect.Value %23, %reflect.Value %28)
  %29 = call i64 @reflect.Value.Len(%reflect.Value %10)
  %30 = icmp ne i64 %29, 2
  br i1 %30, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %31, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %35 = load ptr, ptr @_llgo_int, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr inttoptr (i64 2 to ptr), 1
  %38 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  %39 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %10, %reflect.Value %38)
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %39)
  %41 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %40, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 })
  %42 = xor i1 %41, true
  br i1 %42, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value %10)
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 1
  %45 = icmp ne i64 %44, 2
  br i1 %45, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %46 = load ptr, ptr @_llgo_string, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %50 = load ptr, ptr @_llgo_int, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, ptr inttoptr (i64 2 to ptr), 1
  %53 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %52)
  %54 = load ptr, ptr @_llgo_string, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  %58 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  call void @reflect.Value.SetMapIndex(%reflect.Value %10, %reflect.Value %53, %reflect.Value %58)
  %59 = load ptr, ptr @_llgo_int, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %59, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %60, ptr inttoptr (i64 2 to ptr), 1
  %62 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %61)
  %63 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %10, %reflect.Value %62)
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %63)
  %65 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %64, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 })
  %66 = xor i1 %65, true
  br i1 %66, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %71 = load ptr, ptr @_llgo_int, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %71, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr null, 1
  %74 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %73)
  %75 = call %reflect.Value @reflect.Value.MapIndex(%reflect.Value %10, %reflect.Value %74)
  %76 = call i1 @reflect.Value.IsValid(%reflect.Value %75)
  br i1 %76, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %10)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %77)
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %77, 0
  %80 = getelementptr ptr, ptr %79, i64 20
  %81 = load ptr, ptr %80, align 8
  %82 = insertvalue { ptr, ptr } undef, ptr %81, 0
  %83 = insertvalue { ptr, ptr } %82, ptr %78, 1
  %84 = extractvalue { ptr, ptr } %83, 1
  %85 = extractvalue { ptr, ptr } %83, 0
  %86 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %85(ptr %84)
  %87 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %86)
  %88 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %87)
  %89 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value %10)
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %89)
  %91 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, 0
  %92 = getelementptr ptr, ptr %91, i64 11
  %93 = load ptr, ptr %92, align 8
  %94 = insertvalue { ptr, ptr } undef, ptr %93, 0
  %95 = insertvalue { ptr, ptr } %94, ptr %90, 1
  %96 = extractvalue { ptr, ptr } %95, 1
  %97 = extractvalue { ptr, ptr } %95, 0
  %98 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97(ptr %96)
  %99 = call %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %98)
  %100 = call %reflect.Value @reflect.Value.Elem(%reflect.Value %99)
  %101 = call ptr @reflect.Value.MapRange(%reflect.Value %10)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  call void @reflect.Value.SetIterKey(%reflect.Value %88, ptr %101)
  call void @reflect.Value.SetIterValue(%reflect.Value %100, ptr %101)
  %102 = call i64 @reflect.Value.Int(%reflect.Value %88)
  %103 = call %reflect.Value @"reflect.(*MapIter).Key"(ptr %101)
  %104 = call i64 @reflect.Value.Int(%reflect.Value %103)
  %105 = icmp ne i64 %102, %104
  br i1 %105, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %106 = call i1 @"reflect.(*MapIter).Next"(ptr %101)
  br i1 %106, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %107 = load ptr, ptr @_llgo_string, align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 13 }, ptr %108, align 8
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %107, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109, ptr %108, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %110)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %111 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %100)
  %112 = call %reflect.Value @"reflect.(*MapIter).Value"(ptr %101)
  %113 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %112)
  %114 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %111, %"github.com/goplus/llgo/runtime/internal/runtime.String" %113)
  %115 = xor i1 %114, true
  br i1 %115, label %_llgo_13, label %_llgo_12
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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
  %34 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %33, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %36 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %35, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %37, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %34, ptr %38, align 8
  %39 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %37, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %36, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 2, 2
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42)
  store ptr %43, ptr @"main.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %44 = load ptr, ptr @_llgo_string, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %46, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 8, i64 0, i64 1)
  %48 = load ptr, ptr @_llgo_main.T, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %47, ptr @_llgo_main.T, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %51 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr %50, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %53 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %52, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %51, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 1, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 2
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56)
  store ptr %57, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %58 = load ptr, ptr @"main.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %49, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %59 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"main.(*T).Add", 2
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"main.(*T).Add", 3
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %47, ptr %58, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 8, i64 0, i64 1)
  %69 = load ptr, ptr @"*_llgo_main.T", align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %71)
  store ptr %71, ptr @"*_llgo_main.T", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %72 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %73 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr undef }, ptr %72, 1
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %77 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %76, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %75, ptr %77, align 8
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %76, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 1, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, i64 1, 2
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80)
  store ptr %81, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %82 = load ptr, ptr @_llgo_any, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %84, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 0, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 0, 2
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87)
  store ptr %88, ptr @_llgo_any, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %89 = load ptr, ptr @"[]_llgo_any", align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %91, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 0, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 0, 2
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %95)
  store ptr %96, ptr @"[]_llgo_any", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %97 = load ptr, ptr @_llgo_int, align 8
  %98 = load ptr, ptr @_llgo_int, align 8
  %99 = load ptr, ptr @_llgo_int, align 8
  %100 = load ptr, ptr @_llgo_int, align 8
  %101 = load ptr, ptr @_llgo_int, align 8
  %102 = load ptr, ptr @_llgo_int, align 8
  %103 = load ptr, ptr @_llgo_int, align 8
  %104 = load ptr, ptr @_llgo_int, align 8
  %105 = load ptr, ptr @_llgo_int, align 8
  %106 = load ptr, ptr @"[]_llgo_any", align 8
  %107 = load ptr, ptr @_llgo_int, align 8
  %108 = load ptr, ptr @_llgo_int, align 8
  %109 = load ptr, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %112 = getelementptr ptr, ptr %111, i64 0
  store ptr %97, ptr %112, align 8
  %113 = getelementptr ptr, ptr %111, i64 1
  store ptr %98, ptr %113, align 8
  %114 = getelementptr ptr, ptr %111, i64 2
  store ptr %99, ptr %114, align 8
  %115 = getelementptr ptr, ptr %111, i64 3
  store ptr %100, ptr %115, align 8
  %116 = getelementptr ptr, ptr %111, i64 4
  store ptr %101, ptr %116, align 8
  %117 = getelementptr ptr, ptr %111, i64 5
  store ptr %102, ptr %117, align 8
  %118 = getelementptr ptr, ptr %111, i64 6
  store ptr %103, ptr %118, align 8
  %119 = getelementptr ptr, ptr %111, i64 7
  store ptr %104, ptr %119, align 8
  %120 = getelementptr ptr, ptr %111, i64 8
  store ptr %105, ptr %120, align 8
  %121 = getelementptr ptr, ptr %111, i64 9
  store ptr %106, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %111, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 10, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 10, 2
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %126 = getelementptr ptr, ptr %125, i64 0
  store ptr %107, ptr %126, align 8
  %127 = getelementptr ptr, ptr %125, i64 1
  store ptr %108, ptr %127, align 8
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %125, 0
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %128, i64 2, 1
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %129, i64 2, 2
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %131)
  store ptr %131, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %132 = load ptr, ptr @_llgo_int, align 8
  %133 = load ptr, ptr @_llgo_int, align 8
  %134 = load ptr, ptr @_llgo_int, align 8
  %135 = load ptr, ptr @_llgo_int, align 8
  %136 = load ptr, ptr @_llgo_int, align 8
  %137 = load ptr, ptr @_llgo_int, align 8
  %138 = load ptr, ptr @_llgo_int, align 8
  %139 = load ptr, ptr @_llgo_int, align 8
  %140 = load ptr, ptr @_llgo_int, align 8
  %141 = load ptr, ptr @"[]_llgo_any", align 8
  %142 = load ptr, ptr @_llgo_int, align 8
  %143 = load ptr, ptr @_llgo_int, align 8
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %145 = getelementptr ptr, ptr %144, i64 0
  store ptr %132, ptr %145, align 8
  %146 = getelementptr ptr, ptr %144, i64 1
  store ptr %133, ptr %146, align 8
  %147 = getelementptr ptr, ptr %144, i64 2
  store ptr %134, ptr %147, align 8
  %148 = getelementptr ptr, ptr %144, i64 3
  store ptr %135, ptr %148, align 8
  %149 = getelementptr ptr, ptr %144, i64 4
  store ptr %136, ptr %149, align 8
  %150 = getelementptr ptr, ptr %144, i64 5
  store ptr %137, ptr %150, align 8
  %151 = getelementptr ptr, ptr %144, i64 6
  store ptr %138, ptr %151, align 8
  %152 = getelementptr ptr, ptr %144, i64 7
  store ptr %139, ptr %152, align 8
  %153 = getelementptr ptr, ptr %144, i64 8
  store ptr %140, ptr %153, align 8
  %154 = getelementptr ptr, ptr %144, i64 9
  store ptr %141, ptr %154, align 8
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %144, 0
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, i64 10, 1
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, i64 10, 2
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %159 = getelementptr ptr, ptr %158, i64 0
  store ptr %142, ptr %159, align 8
  %160 = getelementptr ptr, ptr %158, i64 1
  store ptr %143, ptr %160, align 8
  %161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %158, 0
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %161, i64 2, 1
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %162, i64 2, 2
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %157, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, i1 true)
  %165 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %164, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %167 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %166, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %169 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %168, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %165, ptr %169, align 8
  %170 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %168, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %167, ptr %170, align 8
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %168, 0
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %171, i64 2, 1
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172, i64 2, 2
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173)
  store ptr %174, ptr @"main.struct$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", align 8
  %175 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %179)
  %181 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr %180, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %182)
  %184 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr %183, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %185 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %186 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %185)
  %187 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr %186, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %189 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr %188, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %191 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %190, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %181, ptr %191, align 8
  %192 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %190, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %184, ptr %192, align 8
  %193 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %190, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %187, ptr %193, align 8
  %194 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %190, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %189, ptr %194, align 8
  %195 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %190, 0
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, i64 4, 1
  %197 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, i64 4, 2
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197)
  %199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %177, ptr %178, ptr %198, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %199)
  store ptr %199, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare i64 @reflect.Value.Kind(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.Value.Type(%reflect.Value)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i64 @reflect.Value.Int(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce i64 @"__llgo_stub.main.callFunc$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = tail call i64 @"main.callFunc$1"(i64 %1)
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.Value.Method(%reflect.Value, i64)

define linkonce { i64, i64 } @__llgo_stub.main.demo(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10) {
_llgo_0:
  %11 = tail call { i64, i64 } @main.demo(i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  ret { i64, i64 } %11
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.CallSlice(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @reflect.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare i64 @reflect.Value.Len(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.MapKeys(%reflect.Value)

declare %reflect.Value @reflect.Value.MapIndex(%reflect.Value, %reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @reflect.Value.SetMapIndex(%reflect.Value, %reflect.Value, %reflect.Value)

declare i1 @reflect.Value.IsValid(%reflect.Value)

declare %reflect.Value @reflect.New(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.Value.Elem(%reflect.Value)

declare ptr @reflect.Value.MapRange(%reflect.Value)

declare i1 @"reflect.(*MapIter).Next"(ptr)

declare void @reflect.Value.SetIterKey(%reflect.Value, ptr)

declare void @reflect.Value.SetIterValue(%reflect.Value, ptr)

declare %reflect.Value @"reflect.(*MapIter).Key"(ptr)

declare %reflect.Value @"reflect.(*MapIter).Value"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface", %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.MakeMap(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
