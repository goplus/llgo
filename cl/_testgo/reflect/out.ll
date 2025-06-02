; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflect'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflect"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/reflect.T" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/reflect.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [11 x i8] c"call.method", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@2 = private unnamed_addr constant [5 x i8] c"$data", align 1
@3 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testgo/reflect", align 1
@4 = private unnamed_addr constant [7 x i8] c"closure", align 1
@5 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [12 x i8] c"call.closure", align 1
@7 = private unnamed_addr constant [4 x i8] c"func", align 1
@8 = private unnamed_addr constant [9 x i8] c"call.func", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"T", align 1
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"n", align 1
@11 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T" = linkonce global ptr null, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [7 x i8] c"imethod", align 1
@13 = private unnamed_addr constant [6 x i8] c"method", align 1
@_llgo_any = linkonce global ptr null, align 8
@"[]_llgo_any" = linkonce global ptr null, align 8
@"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/reflect.struct$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [10 x i8] c"call.slice", align 1
@15 = private unnamed_addr constant [40 x i8] c"type assertion interface{} -> int failed", align 1
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

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  store i64 %5, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  ret i64 %8
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure$1", ptr undef }, ptr %1, 1
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %6 = load ptr, ptr @_llgo_Pointer, align 8
  %7 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %3, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  %11 = alloca %reflect.Value, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %12, align 8
  call void @reflect.ValueOf(ptr %11, ptr %12)
  %13 = load %reflect.Value, ptr %11, align 8
  %14 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %14, align 8
  %15 = call i64 @reflect.Value.Kind(ptr %14)
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %17 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %17, align 8
  call void @reflect.Value.Type(ptr %16, ptr %17)
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %16, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %19, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %19)
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, 0
  %22 = getelementptr ptr, ptr %21, i64 37
  %23 = load ptr, ptr %22, align 8
  %24 = insertvalue { ptr, ptr } undef, ptr %23, 0
  %25 = insertvalue { ptr, ptr } %24, ptr %20, 1
  %26 = extractvalue { ptr, ptr } %25, 1
  %27 = extractvalue { ptr, ptr } %25, 0
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %27(ptr %26, ptr %28)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr %30, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, ptr %31, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %33 = getelementptr inbounds %reflect.Value, ptr %32, i64 0
  %34 = load ptr, ptr @_llgo_int, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr inttoptr (i64 100 to ptr), 1
  %37 = alloca %reflect.Value, align 8
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %38, align 8
  call void @reflect.ValueOf(ptr %37, ptr %38)
  %39 = load %reflect.Value, ptr %37, align 8
  store %reflect.Value %39, ptr %33, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %32, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 1, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 1, 2
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %44 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %44, align 8
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, ptr %45, align 8
  call void @reflect.Value.Call(ptr %43, ptr %44, ptr %45)
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %43, align 8
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 0
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, 1
  %49 = icmp sge i64 0, %48
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %49)
  %50 = getelementptr inbounds %reflect.Value, ptr %47, i64 0
  %51 = load %reflect.Value, ptr %50, align 8
  %52 = alloca %reflect.Value, align 8
  store %reflect.Value %51, ptr %52, align 8
  %53 = call i64 @reflect.Value.Int(ptr %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %55 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %55, align 8
  call void @reflect.Value.Interface(ptr %54, ptr %55)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %54, align 8
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 0
  %58 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %60 = load ptr, ptr @_llgo_string, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %61, align 8
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %60, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, ptr %61, 1
  %64 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %64, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %64)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %65 = extractvalue { ptr, ptr } %73, 1
  %66 = extractvalue { ptr, ptr } %73, 0
  %67 = call i64 %66(ptr %65, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 1
  %69 = load { ptr, ptr }, ptr %68, align 8
  %70 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %69, 0
  %71 = insertvalue { { ptr, ptr }, i1 } %70, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %72 = phi { { ptr, ptr }, i1 } [ %71, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %73 = extractvalue { { ptr, ptr }, i1 } %72, 0
  %74 = extractvalue { { ptr, ptr }, i1 } %72, 1
  br i1 %74, label %_llgo_2, label %_llgo_1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 12 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %5, %1
  %7 = add i64 %6, 1
  ret i64 %7
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1", ptr null }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = alloca %reflect.Value, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %5, align 8
  call void @reflect.ValueOf(ptr %4, ptr %5)
  %6 = load %reflect.Value, ptr %4, align 8
  %7 = alloca %reflect.Value, align 8
  store %reflect.Value %6, ptr %7, align 8
  %8 = call i64 @reflect.Value.Kind(ptr %7)
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca %reflect.Value, align 8
  store %reflect.Value %6, ptr %10, align 8
  call void @reflect.Value.Type(ptr %9, ptr %10)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %12, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, 0
  %15 = getelementptr ptr, ptr %14, i64 37
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %20(ptr %19, ptr %21)
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %21, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %23, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %22, ptr %24, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %26 = getelementptr inbounds %reflect.Value, ptr %25, i64 0
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr inttoptr (i64 100 to ptr), 1
  %30 = alloca %reflect.Value, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %31, align 8
  call void @reflect.ValueOf(ptr %30, ptr %31)
  %32 = load %reflect.Value, ptr %30, align 8
  store %reflect.Value %32, ptr %26, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %25, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 1, 2
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %37 = alloca %reflect.Value, align 8
  store %reflect.Value %6, ptr %37, align 8
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, ptr %38, align 8
  call void @reflect.Value.Call(ptr %36, ptr %37, ptr %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %36, align 8
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 0
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  %42 = icmp sge i64 0, %41
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %42)
  %43 = getelementptr inbounds %reflect.Value, ptr %40, i64 0
  %44 = load %reflect.Value, ptr %43, align 8
  %45 = alloca %reflect.Value, align 8
  store %reflect.Value %44, ptr %45, align 8
  %46 = call i64 @reflect.Value.Int(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %48 = alloca %reflect.Value, align 8
  store %reflect.Value %6, ptr %48, align 8
  call void @reflect.Value.Interface(ptr %47, ptr %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %47, align 8
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 0
  %51 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %53 = load ptr, ptr @_llgo_string, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr %54, 1
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %57, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %57)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %58 = extractvalue { ptr, ptr } %66, 1
  %59 = extractvalue { ptr, ptr } %66, 0
  %60 = call i64 %59(ptr %58, i64 100)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 1
  %62 = load { ptr, ptr }, ptr %61, align 8
  %63 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %62, 0
  %64 = insertvalue { { ptr, ptr }, i1 } %63, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %65 = phi { { ptr, ptr }, i1 } [ %64, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %66 = extractvalue { { ptr, ptr }, i1 } %65, 0
  %67 = extractvalue { { ptr, ptr }, i1 } %65, 1
  br i1 %67, label %_llgo_2, label %_llgo_1
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(i64 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %2 = add i64 %0, 1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callIMethod"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  %3 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  %4 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %5 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %3)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, 1
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %11, 1
  %14 = alloca %reflect.Value, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr %15, align 8
  call void @reflect.ValueOf(ptr %14, ptr %15)
  %16 = load %reflect.Value, ptr %14, align 8
  %17 = alloca %reflect.Value, align 8
  %18 = alloca %reflect.Value, align 8
  store %reflect.Value %16, ptr %18, align 8
  call void @reflect.Value.Method(ptr %17, ptr %18, i64 0)
  %19 = load %reflect.Value, ptr %17, align 8
  %20 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %20, align 8
  %21 = call i64 @reflect.Value.Kind(ptr %20)
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %23 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %23, align 8
  call void @reflect.Value.Type(ptr %22, ptr %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %22, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 0
  %28 = getelementptr ptr, ptr %27, i64 37
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr } undef, ptr %29, 0
  %31 = insertvalue { ptr, ptr } %30, ptr %26, 1
  %32 = extractvalue { ptr, ptr } %31, 1
  %33 = extractvalue { ptr, ptr } %31, 0
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %33(ptr %32, ptr %34)
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %34, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr %36, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, ptr %37, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %39 = getelementptr inbounds %reflect.Value, ptr %38, i64 0
  %40 = load ptr, ptr @_llgo_int, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr inttoptr (i64 100 to ptr), 1
  %43 = alloca %reflect.Value, align 8
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %44, align 8
  call void @reflect.ValueOf(ptr %43, ptr %44)
  %45 = load %reflect.Value, ptr %43, align 8
  store %reflect.Value %45, ptr %39, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %38, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 1, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 1, 2
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %50 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, ptr %51, align 8
  call void @reflect.Value.Call(ptr %49, ptr %50, ptr %51)
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %49, align 8
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 0
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 1
  %55 = icmp sge i64 0, %54
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %55)
  %56 = getelementptr inbounds %reflect.Value, ptr %53, i64 0
  %57 = load %reflect.Value, ptr %56, align 8
  %58 = alloca %reflect.Value, align 8
  store %reflect.Value %57, ptr %58, align 8
  %59 = call i64 @reflect.Value.Int(ptr %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %61 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %61, align 8
  call void @reflect.Value.Interface(ptr %60, ptr %61)
  %62 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %60, align 8
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, 0
  %64 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %66 = load ptr, ptr @_llgo_string, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %68, ptr %67, 1
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %70, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %70)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %71 = extractvalue { ptr, ptr } %107, 1
  %72 = extractvalue { ptr, ptr } %107, 0
  %73 = call i64 %72(ptr %71, i64 1)
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %75 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %75, align 8
  call void @reflect.Value.Interface(ptr %74, ptr %75)
  %76 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %74, align 8
  %77 = alloca %reflect.Value, align 8
  %78 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %78, align 8
  call void @reflect.ValueOf(ptr %77, ptr %78)
  %79 = load %reflect.Value, ptr %77, align 8
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %81 = getelementptr inbounds %reflect.Value, ptr %80, i64 0
  %82 = load ptr, ptr @_llgo_int, align 8
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr inttoptr (i64 100 to ptr), 1
  %85 = alloca %reflect.Value, align 8
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %86, align 8
  call void @reflect.ValueOf(ptr %85, ptr %86)
  %87 = load %reflect.Value, ptr %85, align 8
  store %reflect.Value %87, ptr %81, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %80, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 1, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 1, 2
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %92 = alloca %reflect.Value, align 8
  store %reflect.Value %79, ptr %92, align 8
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, ptr %93, align 8
  call void @reflect.Value.Call(ptr %91, ptr %92, ptr %93)
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %91, align 8
  %95 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, 0
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, 1
  %97 = icmp sge i64 0, %96
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %97)
  %98 = getelementptr inbounds %reflect.Value, ptr %95, i64 0
  %99 = load %reflect.Value, ptr %98, align 8
  %100 = alloca %reflect.Value, align 8
  store %reflect.Value %99, ptr %100, align 8
  %101 = call i64 @reflect.Value.Int(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, 1
  %103 = load { ptr, ptr }, ptr %102, align 8
  %104 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %103, 0
  %105 = insertvalue { { ptr, ptr }, i1 } %104, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %106 = phi { { ptr, ptr }, i1 } [ %105, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %107 = extractvalue { { ptr, ptr }, i1 } %106, 0
  %108 = extractvalue { { ptr, ptr }, i1 } %106, 1
  br i1 %108, label %_llgo_2, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callMethod"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflect.T", ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %0, 1
  %5 = alloca %reflect.Value, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %6, align 8
  call void @reflect.ValueOf(ptr %5, ptr %6)
  %7 = load %reflect.Value, ptr %5, align 8
  %8 = alloca %reflect.Value, align 8
  %9 = alloca %reflect.Value, align 8
  store %reflect.Value %7, ptr %9, align 8
  call void @reflect.Value.Method(ptr %8, ptr %9, i64 0)
  %10 = load %reflect.Value, ptr %8, align 8
  %11 = alloca %reflect.Value, align 8
  store %reflect.Value %10, ptr %11, align 8
  %12 = call i64 @reflect.Value.Kind(ptr %11)
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %14 = alloca %reflect.Value, align 8
  store %reflect.Value %10, ptr %14, align 8
  call void @reflect.Value.Type(ptr %13, ptr %14)
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %16, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 0
  %19 = getelementptr ptr, ptr %18, i64 37
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %24(ptr %23, ptr %25)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %25, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr %27, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, ptr %28, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %30 = getelementptr inbounds %reflect.Value, ptr %29, i64 0
  %31 = load ptr, ptr @_llgo_int, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, ptr inttoptr (i64 100 to ptr), 1
  %34 = alloca %reflect.Value, align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr %35, align 8
  call void @reflect.ValueOf(ptr %34, ptr %35)
  %36 = load %reflect.Value, ptr %34, align 8
  store %reflect.Value %36, ptr %30, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %29, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 1, 2
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %41 = alloca %reflect.Value, align 8
  store %reflect.Value %10, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, ptr %42, align 8
  call void @reflect.Value.Call(ptr %40, ptr %41, ptr %42)
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %40, align 8
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 0
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 1
  %46 = icmp sge i64 0, %45
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %46)
  %47 = getelementptr inbounds %reflect.Value, ptr %44, i64 0
  %48 = load %reflect.Value, ptr %47, align 8
  %49 = alloca %reflect.Value, align 8
  store %reflect.Value %48, ptr %49, align 8
  %50 = call i64 @reflect.Value.Int(ptr %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %52 = alloca %reflect.Value, align 8
  store %reflect.Value %10, ptr %52, align 8
  call void @reflect.Value.Interface(ptr %51, ptr %52)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %51, align 8
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, 0
  %55 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %57 = load ptr, ptr @_llgo_string, align 8
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %57, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, ptr %58, 1
  %61 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %60, ptr %61, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %61)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %62 = extractvalue { ptr, ptr } %98, 1
  %63 = extractvalue { ptr, ptr } %98, 0
  %64 = call i64 %63(ptr %62, i64 1)
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %66 = alloca %reflect.Value, align 8
  store %reflect.Value %10, ptr %66, align 8
  call void @reflect.Value.Interface(ptr %65, ptr %66)
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %65, align 8
  %68 = alloca %reflect.Value, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, ptr %69, align 8
  call void @reflect.ValueOf(ptr %68, ptr %69)
  %70 = load %reflect.Value, ptr %68, align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %72 = getelementptr inbounds %reflect.Value, ptr %71, i64 0
  %73 = load ptr, ptr @_llgo_int, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr inttoptr (i64 100 to ptr), 1
  %76 = alloca %reflect.Value, align 8
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %77, align 8
  call void @reflect.ValueOf(ptr %76, ptr %77)
  %78 = load %reflect.Value, ptr %76, align 8
  store %reflect.Value %78, ptr %72, align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %71, 0
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, i64 1, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80, i64 1, 2
  %82 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %83 = alloca %reflect.Value, align 8
  store %reflect.Value %70, ptr %83, align 8
  %84 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, ptr %84, align 8
  call void @reflect.Value.Call(ptr %82, ptr %83, ptr %84)
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %82, align 8
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, 0
  %87 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, 1
  %88 = icmp sge i64 0, %87
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %88)
  %89 = getelementptr inbounds %reflect.Value, ptr %86, i64 0
  %90 = load %reflect.Value, ptr %89, align 8
  %91 = alloca %reflect.Value, align 8
  store %reflect.Value %90, ptr %91, align 8
  %92 = call i64 @reflect.Value.Int(ptr %91)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %92)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, 1
  %94 = load { ptr, ptr }, ptr %93, align 8
  %95 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %94, 0
  %96 = insertvalue { { ptr, ptr }, i1 } %95, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %97 = phi { { ptr, ptr }, i1 } [ %96, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %98 = extractvalue { { ptr, ptr }, i1 } %97, 0
  %99 = extractvalue { { ptr, ptr }, i1 } %97, 1
  br i1 %99, label %_llgo_2, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.callSlice"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_any, align 8
  %1 = load ptr, ptr @"[]_llgo_any", align 8
  %2 = load ptr, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", align 8
  %3 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.demo", ptr null }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = alloca %reflect.Value, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %8, align 8
  call void @reflect.ValueOf(ptr %7, ptr %8)
  %9 = load %reflect.Value, ptr %7, align 8
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr inttoptr (i64 1 to ptr), 1
  %13 = alloca %reflect.Value, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %14, align 8
  call void @reflect.ValueOf(ptr %13, ptr %14)
  %15 = load %reflect.Value, ptr %13, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288)
  %17 = getelementptr inbounds %reflect.Value, ptr %16, i64 0
  store %reflect.Value %15, ptr %17, align 8
  %18 = getelementptr inbounds %reflect.Value, ptr %16, i64 1
  store %reflect.Value %15, ptr %18, align 8
  %19 = getelementptr inbounds %reflect.Value, ptr %16, i64 2
  store %reflect.Value %15, ptr %19, align 8
  %20 = getelementptr inbounds %reflect.Value, ptr %16, i64 3
  store %reflect.Value %15, ptr %20, align 8
  %21 = getelementptr inbounds %reflect.Value, ptr %16, i64 4
  store %reflect.Value %15, ptr %21, align 8
  %22 = getelementptr inbounds %reflect.Value, ptr %16, i64 5
  store %reflect.Value %15, ptr %22, align 8
  %23 = getelementptr inbounds %reflect.Value, ptr %16, i64 6
  store %reflect.Value %15, ptr %23, align 8
  %24 = getelementptr inbounds %reflect.Value, ptr %16, i64 7
  store %reflect.Value %15, ptr %24, align 8
  %25 = getelementptr inbounds %reflect.Value, ptr %16, i64 8
  store %reflect.Value %15, ptr %25, align 8
  %26 = getelementptr inbounds %reflect.Value, ptr %16, i64 9
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr inttoptr (i64 1 to ptr), 1
  %30 = alloca %reflect.Value, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %31, align 8
  call void @reflect.ValueOf(ptr %30, ptr %31)
  %32 = load %reflect.Value, ptr %30, align 8
  store %reflect.Value %32, ptr %26, align 8
  %33 = getelementptr inbounds %reflect.Value, ptr %16, i64 10
  %34 = load ptr, ptr @_llgo_int, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr inttoptr (i64 2 to ptr), 1
  %37 = alloca %reflect.Value, align 8
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %38, align 8
  call void @reflect.ValueOf(ptr %37, ptr %38)
  %39 = load %reflect.Value, ptr %37, align 8
  store %reflect.Value %39, ptr %33, align 8
  %40 = getelementptr inbounds %reflect.Value, ptr %16, i64 11
  %41 = load ptr, ptr @_llgo_int, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr inttoptr (i64 3 to ptr), 1
  %44 = alloca %reflect.Value, align 8
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %45, align 8
  call void @reflect.ValueOf(ptr %44, ptr %45)
  %46 = load %reflect.Value, ptr %44, align 8
  store %reflect.Value %46, ptr %40, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 12, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 12, 2
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %51 = alloca %reflect.Value, align 8
  store %reflect.Value %9, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, ptr %52, align 8
  call void @reflect.Value.Call(ptr %50, ptr %51, ptr %52)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %50, align 8
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 0
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 1
  %56 = icmp sge i64 0, %55
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %56)
  %57 = getelementptr inbounds %reflect.Value, ptr %54, i64 0
  %58 = load %reflect.Value, ptr %57, align 8
  %59 = alloca %reflect.Value, align 8
  store %reflect.Value %58, ptr %59, align 8
  %60 = call i64 @reflect.Value.Int(ptr %59)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 0
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 1
  %63 = icmp sge i64 1, %62
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %63)
  %64 = getelementptr inbounds %reflect.Value, ptr %61, i64 1
  %65 = load %reflect.Value, ptr %64, align 8
  %66 = alloca %reflect.Value, align 8
  store %reflect.Value %65, ptr %66, align 8
  %67 = call i64 @reflect.Value.Int(ptr %66)
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 10 }, ptr %68, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 240)
  %70 = getelementptr inbounds %reflect.Value, ptr %69, i64 0
  store %reflect.Value %15, ptr %70, align 8
  %71 = getelementptr inbounds %reflect.Value, ptr %69, i64 1
  store %reflect.Value %15, ptr %71, align 8
  %72 = getelementptr inbounds %reflect.Value, ptr %69, i64 2
  store %reflect.Value %15, ptr %72, align 8
  %73 = getelementptr inbounds %reflect.Value, ptr %69, i64 3
  store %reflect.Value %15, ptr %73, align 8
  %74 = getelementptr inbounds %reflect.Value, ptr %69, i64 4
  store %reflect.Value %15, ptr %74, align 8
  %75 = getelementptr inbounds %reflect.Value, ptr %69, i64 5
  store %reflect.Value %15, ptr %75, align 8
  %76 = getelementptr inbounds %reflect.Value, ptr %69, i64 6
  store %reflect.Value %15, ptr %76, align 8
  %77 = getelementptr inbounds %reflect.Value, ptr %69, i64 7
  store %reflect.Value %15, ptr %77, align 8
  %78 = getelementptr inbounds %reflect.Value, ptr %69, i64 8
  store %reflect.Value %15, ptr %78, align 8
  %79 = getelementptr inbounds %reflect.Value, ptr %69, i64 9
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %81 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %80, i64 0
  %82 = load ptr, ptr @_llgo_int, align 8
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %81, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %80, i64 1
  %86 = load ptr, ptr @_llgo_int, align 8
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %86, 0
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %87, ptr inttoptr (i64 2 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr %85, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %80, i64 2
  %90 = load ptr, ptr @_llgo_int, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %90, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %91, ptr inttoptr (i64 3 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %92, ptr %89, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %80, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 3, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, i64 3, 2
  %96 = load ptr, ptr @"[]_llgo_any", align 8
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, ptr %97, align 8
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %96, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, ptr %97, 1
  %100 = alloca %reflect.Value, align 8
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %99, ptr %101, align 8
  call void @reflect.ValueOf(ptr %100, ptr %101)
  %102 = load %reflect.Value, ptr %100, align 8
  store %reflect.Value %102, ptr %79, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 10, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 10, 2
  %106 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %107 = alloca %reflect.Value, align 8
  store %reflect.Value %9, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, ptr %108, align 8
  call void @reflect.Value.CallSlice(ptr %106, ptr %107, ptr %108)
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %106, align 8
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 0
  %111 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 1
  %112 = icmp sge i64 0, %111
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %112)
  %113 = getelementptr inbounds %reflect.Value, ptr %110, i64 0
  %114 = load %reflect.Value, ptr %113, align 8
  %115 = alloca %reflect.Value, align 8
  store %reflect.Value %114, ptr %115, align 8
  %116 = call i64 @reflect.Value.Int(ptr %115)
  %117 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 0
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 1
  %119 = icmp sge i64 1, %118
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %119)
  %120 = getelementptr inbounds %reflect.Value, ptr %117, i64 1
  %121 = load %reflect.Value, ptr %120, align 8
  %122 = alloca %reflect.Value, align 8
  store %reflect.Value %121, ptr %122, align 8
  %123 = call i64 @reflect.Value.Int(ptr %122)
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 10 }, ptr %124, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %116)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %123)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.demo"(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, ptr %10) {
_llgo_0:
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %13 = phi i64 [ 0, %_llgo_0 ], [ %40, %_llgo_4 ]
  %14 = phi i64 [ -1, %_llgo_0 ], [ %15, %_llgo_4 ]
  %15 = add i64 %14, 1
  %16 = icmp slt i64 %15, %12
  br i1 %16, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 1
  %20 = icmp slt i64 %15, 0
  %21 = icmp sge i64 %15, %19
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %18, i64 %15
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %23, align 8
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, 0
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %28 = add i64 %1, %2
  %29 = add i64 %28, %3
  %30 = add i64 %29, %4
  %31 = add i64 %30, %5
  %32 = add i64 %31, %6
  %33 = add i64 %32, %7
  %34 = add i64 %33, %8
  %35 = add i64 %34, %9
  %36 = insertvalue { i64, i64 } undef, i64 %35, 0
  %37 = insertvalue { i64, i64 } %36, i64 %13, 1
  store { i64, i64 } %37, ptr %0, align 4
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, 1
  %39 = ptrtoint ptr %38 to i64
  %40 = add i64 %13, %39
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_2
  %41 = load ptr, ptr @_llgo_string, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 40 }, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %42, 1
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %45, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %45)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.init$guard", align 1
  call void @reflect.init()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callSlice"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callMethod"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.callIMethod"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo1"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo2"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo1"() {
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
  %11 = alloca %reflect.Value, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %12, align 8
  call void @reflect.ValueOf(ptr %11, ptr %12)
  %13 = load %reflect.Value, ptr %11, align 8
  %14 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %14, align 8
  %15 = call i64 @reflect.Value.Len(ptr %14)
  %16 = icmp ne i64 %15, 2
  br i1 %16, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %18, 1
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr inttoptr (i64 2 to ptr), 1
  %25 = alloca %reflect.Value, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %26, align 8
  call void @reflect.ValueOf(ptr %25, ptr %26)
  %27 = load %reflect.Value, ptr %25, align 8
  %28 = alloca %reflect.Value, align 8
  %29 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %29, align 8
  %30 = alloca %reflect.Value, align 8
  store %reflect.Value %27, ptr %30, align 8
  call void @reflect.Value.MapIndex(ptr %28, ptr %29, ptr %30)
  %31 = load %reflect.Value, ptr %28, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %33 = alloca %reflect.Value, align 8
  store %reflect.Value %31, ptr %33, align 8
  call void @reflect.Value.String(ptr %32, ptr %33)
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %32, align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %34, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %36, align 8
  %37 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %35, ptr %36)
  %38 = xor i1 %37, true
  br i1 %38, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %40 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %40, align 8
  call void @reflect.Value.MapKeys(ptr %39, ptr %40)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %39, align 8
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, 1
  %43 = icmp ne i64 %42, 2
  br i1 %43, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %44 = load ptr, ptr @_llgo_string, align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %45, 1
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %48, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %48)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %49 = load ptr, ptr @_llgo_int, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %49, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr inttoptr (i64 2 to ptr), 1
  %52 = alloca %reflect.Value, align 8
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, ptr %53, align 8
  call void @reflect.ValueOf(ptr %52, ptr %53)
  %54 = load %reflect.Value, ptr %52, align 8
  %55 = load ptr, ptr @_llgo_string, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %55, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %56, 1
  %59 = alloca %reflect.Value, align 8
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %60, align 8
  call void @reflect.ValueOf(ptr %59, ptr %60)
  %61 = load %reflect.Value, ptr %59, align 8
  %62 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %62, align 8
  %63 = alloca %reflect.Value, align 8
  store %reflect.Value %54, ptr %63, align 8
  %64 = alloca %reflect.Value, align 8
  store %reflect.Value %61, ptr %64, align 8
  call void @reflect.Value.SetMapIndex(ptr %62, ptr %63, ptr %64)
  %65 = load ptr, ptr @_llgo_int, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %65, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr inttoptr (i64 2 to ptr), 1
  %68 = alloca %reflect.Value, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, ptr %69, align 8
  call void @reflect.ValueOf(ptr %68, ptr %69)
  %70 = load %reflect.Value, ptr %68, align 8
  %71 = alloca %reflect.Value, align 8
  %72 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %72, align 8
  %73 = alloca %reflect.Value, align 8
  store %reflect.Value %70, ptr %73, align 8
  call void @reflect.Value.MapIndex(ptr %71, ptr %72, ptr %73)
  %74 = load %reflect.Value, ptr %71, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %76 = alloca %reflect.Value, align 8
  store %reflect.Value %74, ptr %76, align 8
  call void @reflect.Value.String(ptr %75, ptr %76)
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %75, align 8
  %78 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %77, ptr %78, align 8
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr %79, align 8
  %80 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %78, ptr %79)
  %81 = xor i1 %80, true
  br i1 %81, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %82 = load ptr, ptr @_llgo_string, align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %83, 1
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %86, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %86)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %87 = load ptr, ptr @_llgo_int, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %87, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr null, 1
  %90 = alloca %reflect.Value, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %91, align 8
  call void @reflect.ValueOf(ptr %90, ptr %91)
  %92 = load %reflect.Value, ptr %90, align 8
  %93 = alloca %reflect.Value, align 8
  %94 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %94, align 8
  %95 = alloca %reflect.Value, align 8
  store %reflect.Value %92, ptr %95, align 8
  call void @reflect.Value.MapIndex(ptr %93, ptr %94, ptr %95)
  %96 = load %reflect.Value, ptr %93, align 8
  %97 = alloca %reflect.Value, align 8
  store %reflect.Value %96, ptr %97, align 8
  %98 = call i1 @reflect.Value.IsValid(ptr %97)
  br i1 %98, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr %99, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %99)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %101 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %101, align 8
  call void @reflect.Value.Type(ptr %100, ptr %101)
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %100, align 8
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, ptr %103, align 8
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %103)
  %105 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %102, 0
  %106 = getelementptr ptr, ptr %105, i64 20
  %107 = load ptr, ptr %106, align 8
  %108 = insertvalue { ptr, ptr } undef, ptr %107, 0
  %109 = insertvalue { ptr, ptr } %108, ptr %104, 1
  %110 = extractvalue { ptr, ptr } %109, 1
  %111 = extractvalue { ptr, ptr } %109, 0
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void %111(ptr %110, ptr %112)
  %113 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %112, align 8
  %114 = alloca %reflect.Value, align 8
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %113, ptr %115, align 8
  call void @reflect.New(ptr %114, ptr %115)
  %116 = load %reflect.Value, ptr %114, align 8
  %117 = alloca %reflect.Value, align 8
  %118 = alloca %reflect.Value, align 8
  store %reflect.Value %116, ptr %118, align 8
  call void @reflect.Value.Elem(ptr %117, ptr %118)
  %119 = load %reflect.Value, ptr %117, align 8
  %120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %121 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %121, align 8
  call void @reflect.Value.Type(ptr %120, ptr %121)
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %120, align 8
  %123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, ptr %123, align 8
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %123)
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, 0
  %126 = getelementptr ptr, ptr %125, i64 11
  %127 = load ptr, ptr %126, align 8
  %128 = insertvalue { ptr, ptr } undef, ptr %127, 0
  %129 = insertvalue { ptr, ptr } %128, ptr %124, 1
  %130 = extractvalue { ptr, ptr } %129, 1
  %131 = extractvalue { ptr, ptr } %129, 0
  %132 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void %131(ptr %130, ptr %132)
  %133 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %132, align 8
  %134 = alloca %reflect.Value, align 8
  %135 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %133, ptr %135, align 8
  call void @reflect.New(ptr %134, ptr %135)
  %136 = load %reflect.Value, ptr %134, align 8
  %137 = alloca %reflect.Value, align 8
  %138 = alloca %reflect.Value, align 8
  store %reflect.Value %136, ptr %138, align 8
  call void @reflect.Value.Elem(ptr %137, ptr %138)
  %139 = load %reflect.Value, ptr %137, align 8
  %140 = alloca %reflect.Value, align 8
  store %reflect.Value %13, ptr %140, align 8
  %141 = call ptr @reflect.Value.MapRange(ptr %140)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  %142 = alloca %reflect.Value, align 8
  store %reflect.Value %119, ptr %142, align 8
  call void @reflect.Value.SetIterKey(ptr %142, ptr %141)
  %143 = alloca %reflect.Value, align 8
  store %reflect.Value %139, ptr %143, align 8
  call void @reflect.Value.SetIterValue(ptr %143, ptr %141)
  %144 = alloca %reflect.Value, align 8
  store %reflect.Value %119, ptr %144, align 8
  %145 = call i64 @reflect.Value.Int(ptr %144)
  %146 = alloca %reflect.Value, align 8
  call void @"reflect.(*MapIter).Key"(ptr %146, ptr %141)
  %147 = load %reflect.Value, ptr %146, align 8
  %148 = alloca %reflect.Value, align 8
  store %reflect.Value %147, ptr %148, align 8
  %149 = call i64 @reflect.Value.Int(ptr %148)
  %150 = icmp ne i64 %145, %149
  br i1 %150, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %151 = call i1 @"reflect.(*MapIter).Next"(ptr %141)
  br i1 %151, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %152 = load ptr, ptr @_llgo_string, align 8
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 13 }, ptr %153, align 8
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %152, 0
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %154, ptr %153, 1
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %155, ptr %156, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %156)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %157 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %158 = alloca %reflect.Value, align 8
  store %reflect.Value %139, ptr %158, align 8
  call void @reflect.Value.String(ptr %157, ptr %158)
  %159 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %157, align 8
  %160 = alloca %reflect.Value, align 8
  call void @"reflect.(*MapIter).Value"(ptr %160, ptr %141)
  %161 = load %reflect.Value, ptr %160, align 8
  %162 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %163 = alloca %reflect.Value, align 8
  store %reflect.Value %161, ptr %163, align 8
  call void @reflect.Value.String(ptr %162, ptr %163)
  %164 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %162, align 8
  %165 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %159, ptr %165, align 8
  %166 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %164, ptr %166, align 8
  %167 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %165, ptr %166)
  %168 = xor i1 %167, true
  br i1 %168, label %_llgo_13, label %_llgo_12
}

define void @"github.com/goplus/llgo/cl/_testgo/reflect.mapDemo2"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr null, 1
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %4, align 8
  call void @reflect.TypeOf(ptr %3, ptr %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %11, align 8
  call void @reflect.TypeOf(ptr %10, ptr %11)
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %10, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, ptr %15, align 8
  call void @reflect.MapOf(ptr %13, ptr %14, ptr %15)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, align 8
  %17 = alloca %reflect.Value, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %18, align 8
  call void @reflect.MakeMap(ptr %17, ptr %18)
  %19 = load %reflect.Value, ptr %17, align 8
  %20 = load ptr, ptr @_llgo_int, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr inttoptr (i64 1 to ptr), 1
  %23 = alloca %reflect.Value, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %24, align 8
  call void @reflect.ValueOf(ptr %23, ptr %24)
  %25 = load %reflect.Value, ptr %23, align 8
  %26 = load ptr, ptr @_llgo_string, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %27, 1
  %30 = alloca %reflect.Value, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %31, align 8
  call void @reflect.ValueOf(ptr %30, ptr %31)
  %32 = load %reflect.Value, ptr %30, align 8
  %33 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %33, align 8
  %34 = alloca %reflect.Value, align 8
  store %reflect.Value %25, ptr %34, align 8
  %35 = alloca %reflect.Value, align 8
  store %reflect.Value %32, ptr %35, align 8
  call void @reflect.Value.SetMapIndex(ptr %33, ptr %34, ptr %35)
  %36 = load ptr, ptr @_llgo_int, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr inttoptr (i64 2 to ptr), 1
  %39 = alloca %reflect.Value, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %40, align 8
  call void @reflect.ValueOf(ptr %39, ptr %40)
  %41 = load %reflect.Value, ptr %39, align 8
  %42 = load ptr, ptr @_llgo_string, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  %46 = alloca %reflect.Value, align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %47, align 8
  call void @reflect.ValueOf(ptr %46, ptr %47)
  %48 = load %reflect.Value, ptr %46, align 8
  %49 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %49, align 8
  %50 = alloca %reflect.Value, align 8
  store %reflect.Value %41, ptr %50, align 8
  %51 = alloca %reflect.Value, align 8
  store %reflect.Value %48, ptr %51, align 8
  call void @reflect.Value.SetMapIndex(ptr %49, ptr %50, ptr %51)
  %52 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %52, align 8
  %53 = call i64 @reflect.Value.Len(ptr %52)
  %54 = icmp ne i64 %53, 2
  br i1 %54, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %55 = load ptr, ptr @_llgo_string, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %55, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %56, 1
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %59, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %59)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %60 = load ptr, ptr @_llgo_int, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, ptr inttoptr (i64 2 to ptr), 1
  %63 = alloca %reflect.Value, align 8
  %64 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, ptr %64, align 8
  call void @reflect.ValueOf(ptr %63, ptr %64)
  %65 = load %reflect.Value, ptr %63, align 8
  %66 = alloca %reflect.Value, align 8
  %67 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %67, align 8
  %68 = alloca %reflect.Value, align 8
  store %reflect.Value %65, ptr %68, align 8
  call void @reflect.Value.MapIndex(ptr %66, ptr %67, ptr %68)
  %69 = load %reflect.Value, ptr %66, align 8
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %71 = alloca %reflect.Value, align 8
  store %reflect.Value %69, ptr %71, align 8
  call void @reflect.Value.String(ptr %70, ptr %71)
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %70, align 8
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, ptr %73, align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 }, ptr %74, align 8
  %75 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %73, ptr %74)
  %76 = xor i1 %75, true
  br i1 %76, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %78 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %78, align 8
  call void @reflect.Value.MapKeys(ptr %77, ptr %78)
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %77, align 8
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, 1
  %81 = icmp ne i64 %80, 2
  br i1 %81, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %82 = load ptr, ptr @_llgo_string, align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %83, 1
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %86, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %86)
  unreachable

_llgo_5:                                          ; preds = %_llgo_2
  %87 = load ptr, ptr @_llgo_int, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %87, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr inttoptr (i64 2 to ptr), 1
  %90 = alloca %reflect.Value, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %91, align 8
  call void @reflect.ValueOf(ptr %90, ptr %91)
  %92 = load %reflect.Value, ptr %90, align 8
  %93 = load ptr, ptr @_llgo_string, align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, ptr %94, 1
  %97 = alloca %reflect.Value, align 8
  %98 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %96, ptr %98, align 8
  call void @reflect.ValueOf(ptr %97, ptr %98)
  %99 = load %reflect.Value, ptr %97, align 8
  %100 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %100, align 8
  %101 = alloca %reflect.Value, align 8
  store %reflect.Value %92, ptr %101, align 8
  %102 = alloca %reflect.Value, align 8
  store %reflect.Value %99, ptr %102, align 8
  call void @reflect.Value.SetMapIndex(ptr %100, ptr %101, ptr %102)
  %103 = load ptr, ptr @_llgo_int, align 8
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %103, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, ptr inttoptr (i64 2 to ptr), 1
  %106 = alloca %reflect.Value, align 8
  %107 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, ptr %107, align 8
  call void @reflect.ValueOf(ptr %106, ptr %107)
  %108 = load %reflect.Value, ptr %106, align 8
  %109 = alloca %reflect.Value, align 8
  %110 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %110, align 8
  %111 = alloca %reflect.Value, align 8
  store %reflect.Value %108, ptr %111, align 8
  call void @reflect.Value.MapIndex(ptr %109, ptr %110, ptr %111)
  %112 = load %reflect.Value, ptr %109, align 8
  %113 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %114 = alloca %reflect.Value, align 8
  store %reflect.Value %112, ptr %114, align 8
  call void @reflect.Value.String(ptr %113, ptr %114)
  %115 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %113, align 8
  %116 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %115, ptr %116, align 8
  %117 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 4 }, ptr %117, align 8
  %118 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %116, ptr %117)
  %119 = xor i1 %118, true
  br i1 %119, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %120 = load ptr, ptr @_llgo_string, align 8
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 14 }, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %120, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %122, ptr %121, 1
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %123, ptr %124, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %124)
  unreachable

_llgo_7:                                          ; preds = %_llgo_5
  %125 = load ptr, ptr @_llgo_int, align 8
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %125, 0
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, ptr null, 1
  %128 = alloca %reflect.Value, align 8
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %127, ptr %129, align 8
  call void @reflect.ValueOf(ptr %128, ptr %129)
  %130 = load %reflect.Value, ptr %128, align 8
  %131 = alloca %reflect.Value, align 8
  %132 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %132, align 8
  %133 = alloca %reflect.Value, align 8
  store %reflect.Value %130, ptr %133, align 8
  call void @reflect.Value.MapIndex(ptr %131, ptr %132, ptr %133)
  %134 = load %reflect.Value, ptr %131, align 8
  %135 = alloca %reflect.Value, align 8
  store %reflect.Value %134, ptr %135, align 8
  %136 = call i1 @reflect.Value.IsValid(ptr %135)
  br i1 %136, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %137 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 12 }, ptr %137, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %137)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_7
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %139 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %139, align 8
  call void @reflect.Value.Type(ptr %138, ptr %139)
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %138, align 8
  %141 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %140, ptr %141, align 8
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %141)
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %140, 0
  %144 = getelementptr ptr, ptr %143, i64 20
  %145 = load ptr, ptr %144, align 8
  %146 = insertvalue { ptr, ptr } undef, ptr %145, 0
  %147 = insertvalue { ptr, ptr } %146, ptr %142, 1
  %148 = extractvalue { ptr, ptr } %147, 1
  %149 = extractvalue { ptr, ptr } %147, 0
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void %149(ptr %148, ptr %150)
  %151 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %150, align 8
  %152 = alloca %reflect.Value, align 8
  %153 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %151, ptr %153, align 8
  call void @reflect.New(ptr %152, ptr %153)
  %154 = load %reflect.Value, ptr %152, align 8
  %155 = alloca %reflect.Value, align 8
  %156 = alloca %reflect.Value, align 8
  store %reflect.Value %154, ptr %156, align 8
  call void @reflect.Value.Elem(ptr %155, ptr %156)
  %157 = load %reflect.Value, ptr %155, align 8
  %158 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %159 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %159, align 8
  call void @reflect.Value.Type(ptr %158, ptr %159)
  %160 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %158, align 8
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %160, ptr %161, align 8
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %161)
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %160, 0
  %164 = getelementptr ptr, ptr %163, i64 11
  %165 = load ptr, ptr %164, align 8
  %166 = insertvalue { ptr, ptr } undef, ptr %165, 0
  %167 = insertvalue { ptr, ptr } %166, ptr %162, 1
  %168 = extractvalue { ptr, ptr } %167, 1
  %169 = extractvalue { ptr, ptr } %167, 0
  %170 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void %169(ptr %168, ptr %170)
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %170, align 8
  %172 = alloca %reflect.Value, align 8
  %173 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %171, ptr %173, align 8
  call void @reflect.New(ptr %172, ptr %173)
  %174 = load %reflect.Value, ptr %172, align 8
  %175 = alloca %reflect.Value, align 8
  %176 = alloca %reflect.Value, align 8
  store %reflect.Value %174, ptr %176, align 8
  call void @reflect.Value.Elem(ptr %175, ptr %176)
  %177 = load %reflect.Value, ptr %175, align 8
  %178 = alloca %reflect.Value, align 8
  store %reflect.Value %19, ptr %178, align 8
  %179 = call ptr @reflect.Value.MapRange(ptr %178)
  br label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12
  %180 = alloca %reflect.Value, align 8
  store %reflect.Value %157, ptr %180, align 8
  call void @reflect.Value.SetIterKey(ptr %180, ptr %179)
  %181 = alloca %reflect.Value, align 8
  store %reflect.Value %177, ptr %181, align 8
  call void @reflect.Value.SetIterValue(ptr %181, ptr %179)
  %182 = alloca %reflect.Value, align 8
  store %reflect.Value %157, ptr %182, align 8
  %183 = call i64 @reflect.Value.Int(ptr %182)
  %184 = alloca %reflect.Value, align 8
  call void @"reflect.(*MapIter).Key"(ptr %184, ptr %179)
  %185 = load %reflect.Value, ptr %184, align 8
  %186 = alloca %reflect.Value, align 8
  store %reflect.Value %185, ptr %186, align 8
  %187 = call i64 @reflect.Value.Int(ptr %186)
  %188 = icmp ne i64 %183, %187
  br i1 %188, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_12
  ret void

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_9
  %189 = call i1 @"reflect.(*MapIter).Next"(ptr %179)
  br i1 %189, label %_llgo_10, label %_llgo_11

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_10
  %190 = load ptr, ptr @_llgo_string, align 8
  %191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 13 }, ptr %191, align 8
  %192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %190, 0
  %193 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %192, ptr %191, 1
  %194 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %193, ptr %194, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %194)
  unreachable

_llgo_14:                                         ; preds = %_llgo_10
  %195 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %196 = alloca %reflect.Value, align 8
  store %reflect.Value %177, ptr %196, align 8
  call void @reflect.Value.String(ptr %195, ptr %196)
  %197 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %195, align 8
  %198 = alloca %reflect.Value, align 8
  call void @"reflect.(*MapIter).Value"(ptr %198, ptr %179)
  %199 = load %reflect.Value, ptr %198, align 8
  %200 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %201 = alloca %reflect.Value, align 8
  store %reflect.Value %199, ptr %201, align 8
  call void @reflect.Value.String(ptr %200, ptr %201)
  %202 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %200, align 8
  %203 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %197, ptr %203, align 8
  %204 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %202, ptr %204, align 8
  %205 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %203, ptr %204)
  %206 = xor i1 %205, true
  br i1 %206, label %_llgo_13, label %_llgo_12
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @reflect.ValueOf(ptr, ptr)

define void @"github.com/goplus/llgo/cl/_testgo/reflect.init$after"() {
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %40, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %38, ptr %39, ptr %37, i64 0, ptr %40, i1 false)
  %41 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %38, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %43 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %44, align 8
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %53, i64 16, ptr %54)
  store ptr %55, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$QIHBTaw1IFobr8yvWpq-2AJFm3xBNhdW_aNBicqUBGk", align 8
  %56 = load ptr, ptr @_llgo_string, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %58, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %59, align 8
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %60, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %59, ptr %60, i64 25, i64 8, i64 0, i64 1)
  %62 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %61, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %65 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr %66, align 8
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %67, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %65, ptr %66, ptr %64, i64 0, ptr %67, i1 false)
  %68 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %65, align 8
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %68, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 2
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, ptr %75, align 8
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %74, i64 8, ptr %75)
  store ptr %76, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  %77 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$eovYmOhZg4X0zMSsuscSshndnbbAGvB2E3cyG8E7Y4U", align 8
  br i1 %63, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %78 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %78, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add", 2
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.(*T).Add", 3
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %83 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %82, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, i64 1, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 1, 2
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %87, align 8
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, ptr %88, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %61, ptr %77, ptr %87, ptr %88)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %89, align 8
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %90, align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %89, ptr %90, i64 25, i64 8, i64 0, i64 1)
  %92 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %91)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %94)
  store ptr %94, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflect.T", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %95 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %96 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 3 }, ptr undef }, ptr %95, 1
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %100 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %99, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %98, ptr %100, align 8
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %99, 0
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i64 1, 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, i64 1, 2
  %104 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, ptr %105, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %104, ptr %105)
  store ptr %106, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %107 = load ptr, ptr @_llgo_any, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %109, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 0, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 0, 2
  %113 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %113, align 8
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, ptr %114, align 8
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %113, ptr %114)
  store ptr %115, ptr @_llgo_any, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %116 = load ptr, ptr @"[]_llgo_any", align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %118, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, i64 0, 1
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 0, 2
  %122 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %122, align 8
  %123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, ptr %123, align 8
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %122, ptr %123)
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %124)
  store ptr %125, ptr @"[]_llgo_any", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %126 = load ptr, ptr @_llgo_int, align 8
  %127 = load ptr, ptr @_llgo_int, align 8
  %128 = load ptr, ptr @_llgo_int, align 8
  %129 = load ptr, ptr @_llgo_int, align 8
  %130 = load ptr, ptr @_llgo_int, align 8
  %131 = load ptr, ptr @_llgo_int, align 8
  %132 = load ptr, ptr @_llgo_int, align 8
  %133 = load ptr, ptr @_llgo_int, align 8
  %134 = load ptr, ptr @_llgo_int, align 8
  %135 = load ptr, ptr @"[]_llgo_any", align 8
  %136 = load ptr, ptr @_llgo_int, align 8
  %137 = load ptr, ptr @_llgo_int, align 8
  %138 = load ptr, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %141 = getelementptr ptr, ptr %140, i64 0
  store ptr %126, ptr %141, align 8
  %142 = getelementptr ptr, ptr %140, i64 1
  store ptr %127, ptr %142, align 8
  %143 = getelementptr ptr, ptr %140, i64 2
  store ptr %128, ptr %143, align 8
  %144 = getelementptr ptr, ptr %140, i64 3
  store ptr %129, ptr %144, align 8
  %145 = getelementptr ptr, ptr %140, i64 4
  store ptr %130, ptr %145, align 8
  %146 = getelementptr ptr, ptr %140, i64 5
  store ptr %131, ptr %146, align 8
  %147 = getelementptr ptr, ptr %140, i64 6
  store ptr %132, ptr %147, align 8
  %148 = getelementptr ptr, ptr %140, i64 7
  store ptr %133, ptr %148, align 8
  %149 = getelementptr ptr, ptr %140, i64 8
  store ptr %134, ptr %149, align 8
  %150 = getelementptr ptr, ptr %140, i64 9
  store ptr %135, ptr %150, align 8
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %140, 0
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, i64 10, 1
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, i64 10, 2
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %155 = getelementptr ptr, ptr %154, i64 0
  store ptr %136, ptr %155, align 8
  %156 = getelementptr ptr, ptr %154, i64 1
  store ptr %137, ptr %156, align 8
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %154, 0
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %157, i64 2, 1
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158, i64 2, 2
  %160 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, ptr %160, align 8
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, ptr %161, align 8
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %160, ptr %161, i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %162)
  store ptr %162, ptr @"_llgo_func$KK0iU4Wpi3BdRqssvycXqtgNe2Dq1riBlM61Rds1QsU", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %163 = load ptr, ptr @_llgo_int, align 8
  %164 = load ptr, ptr @_llgo_int, align 8
  %165 = load ptr, ptr @_llgo_int, align 8
  %166 = load ptr, ptr @_llgo_int, align 8
  %167 = load ptr, ptr @_llgo_int, align 8
  %168 = load ptr, ptr @_llgo_int, align 8
  %169 = load ptr, ptr @_llgo_int, align 8
  %170 = load ptr, ptr @_llgo_int, align 8
  %171 = load ptr, ptr @_llgo_int, align 8
  %172 = load ptr, ptr @"[]_llgo_any", align 8
  %173 = load ptr, ptr @_llgo_int, align 8
  %174 = load ptr, ptr @_llgo_int, align 8
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %176 = getelementptr ptr, ptr %175, i64 0
  store ptr %163, ptr %176, align 8
  %177 = getelementptr ptr, ptr %175, i64 1
  store ptr %164, ptr %177, align 8
  %178 = getelementptr ptr, ptr %175, i64 2
  store ptr %165, ptr %178, align 8
  %179 = getelementptr ptr, ptr %175, i64 3
  store ptr %166, ptr %179, align 8
  %180 = getelementptr ptr, ptr %175, i64 4
  store ptr %167, ptr %180, align 8
  %181 = getelementptr ptr, ptr %175, i64 5
  store ptr %168, ptr %181, align 8
  %182 = getelementptr ptr, ptr %175, i64 6
  store ptr %169, ptr %182, align 8
  %183 = getelementptr ptr, ptr %175, i64 7
  store ptr %170, ptr %183, align 8
  %184 = getelementptr ptr, ptr %175, i64 8
  store ptr %171, ptr %184, align 8
  %185 = getelementptr ptr, ptr %175, i64 9
  store ptr %172, ptr %185, align 8
  %186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %175, 0
  %187 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %186, i64 10, 1
  %188 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %187, i64 10, 2
  %189 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %190 = getelementptr ptr, ptr %189, i64 0
  store ptr %173, ptr %190, align 8
  %191 = getelementptr ptr, ptr %189, i64 1
  store ptr %174, ptr %191, align 8
  %192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %189, 0
  %193 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %192, i64 2, 1
  %194 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %193, i64 2, 2
  %195 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, ptr %195, align 8
  %196 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, ptr %196, align 8
  %197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %195, ptr %196, i1 true)
  %198 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %199 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %199, align 8
  %200 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %200, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %198, ptr %199, ptr %197, i64 0, ptr %200, i1 false)
  %201 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %198, align 8
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %203 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %204 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %204, align 8
  %205 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %205, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %203, ptr %204, ptr %202, i64 8, ptr %205, i1 false)
  %206 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %203, align 8
  %207 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %208 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %207, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %201, ptr %208, align 8
  %209 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %207, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %206, ptr %209, align 8
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %207, 0
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210, i64 2, 1
  %212 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %211, i64 2, 2
  %213 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %213, align 8
  %214 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %212, ptr %214, align 8
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %213, i64 16, ptr %214)
  store ptr %215, ptr @"github.com/goplus/llgo/cl/_testgo/reflect.struct$FjMjjQr3-2iTiWyZP1IIQFOz0hUCa0OS6pEm5uVV6Pk", align 8
  %216 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %220)
  %222 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %223 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr %223, align 8
  %224 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %224, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %222, ptr %223, ptr %221, i64 0, ptr %224, i1 false)
  %225 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %222, align 8
  %226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %227 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %226)
  %228 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %229 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr %229, align 8
  %230 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %230, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %228, ptr %229, ptr %227, i64 8, ptr %230, i1 false)
  %231 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %228, align 8
  %232 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %232)
  %234 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %235 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr %235, align 8
  %236 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %236, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %234, ptr %235, ptr %233, i64 72, ptr %236, i1 false)
  %237 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %234, align 8
  %238 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %239 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %240 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 8 }, ptr %240, align 8
  %241 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %241, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %239, ptr %240, ptr %238, i64 200, ptr %241, i1 false)
  %242 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, align 8
  %243 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %244 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %243, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %225, ptr %244, align 8
  %245 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %243, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %231, ptr %245, align 8
  %246 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %243, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %237, ptr %246, align 8
  %247 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %243, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %242, ptr %247, align 8
  %248 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %243, 0
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248, i64 4, 1
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %249, i64 4, 2
  %251 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 41 }, ptr %251, align 8
  %252 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %250, ptr %252, align 8
  %253 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %251, i64 208, ptr %252)
  %254 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %218, ptr %219, ptr %253, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %254)
  store ptr %254, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare i64 @reflect.Value.Kind(ptr)

declare void @reflect.Value.Type(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @reflect.Value.Call(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i64 @reflect.Value.Int(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @reflect.Value.Interface(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/reflect.callFunc$1"(i64 %1)
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare void @reflect.Value.Method(ptr, ptr, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflect.demo"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11) {
_llgo_0:
  %12 = alloca { i64, i64 }, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reflect.demo"(ptr %12, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10)
  %13 = load volatile { i64, i64 }, ptr %12, align 4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare void @reflect.Value.CallSlice(ptr, ptr, ptr)

declare void @reflect.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare i64 @reflect.Value.Len(ptr)

declare void @reflect.Value.MapKeys(ptr, ptr)

declare void @reflect.Value.MapIndex(ptr, ptr, ptr)

declare void @reflect.Value.String(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr, ptr)

declare void @reflect.Value.SetMapIndex(ptr, ptr, ptr)

declare i1 @reflect.Value.IsValid(ptr)

declare void @reflect.New(ptr, ptr)

declare void @reflect.Value.Elem(ptr, ptr)

declare ptr @reflect.Value.MapRange(ptr)

declare i1 @"reflect.(*MapIter).Next"(ptr)

declare void @reflect.Value.SetIterKey(ptr, ptr)

declare void @reflect.Value.SetIterValue(ptr, ptr)

declare void @"reflect.(*MapIter).Key"(ptr, ptr)

declare void @"reflect.(*MapIter).Value"(ptr, ptr)

declare void @reflect.TypeOf(ptr, ptr)

declare void @reflect.MapOf(ptr, ptr, ptr)

declare void @reflect.MakeMap(ptr, ptr)
