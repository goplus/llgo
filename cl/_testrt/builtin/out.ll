; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@main.a = global i64 0, align 8
@main.b = global i64 0, align 8
@"main.init$guard" = global i1 false, align 1
@main.n = global i64 0, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [3 x i8] c"def", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
@3 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
@4 = private unnamed_addr constant [3 x i8] c"abc", align 1
@5 = private unnamed_addr constant [3 x i8] c"abd", align 1
@6 = private unnamed_addr constant [2 x i8] c"fn", align 1

define double @main.Float64frombits(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = load double, ptr %1, align 8
  ret double %2
}

define double @main.Inf(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
  %3 = call double @main.Float64frombits(i64 %2)
  ret double %3

_llgo_3:                                          ; preds = %_llgo_0
  br label %_llgo_2
}

define i1 @main.IsNaN(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  ret i1 %1
}

define double @main.NaN() {
_llgo_0:
  %0 = call double @main.Float64frombits(i64 9221120237041090561)
  ret double %0
}

define void @main.demo() {
_llgo_0:
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  store i64 9223372036854775807, ptr @main.a, align 4
  store i64 -9223372036854775808, ptr @main.b, align 4
  store i64 -1, ptr @main.n, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main.main() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  %10 = getelementptr inbounds i64, ptr %8, i64 1
  %11 = getelementptr inbounds i64, ptr %8, i64 2
  %12 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1, ptr %9, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %11, align 4
  store i64 4, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 10)
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 1, i64 10, i64 0, i64 4, i64 10)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 1, ptr %20, align 4
  %21 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 2, ptr %21, align 4
  %22 = getelementptr inbounds i64, ptr %19, i64 2
  store i64 3, ptr %22, align 4
  %23 = getelementptr inbounds i64, ptr %19, i64 3
  store i64 4, ptr %23, align 4
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 4, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 4, 2
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %30, i64 8, i64 %28, i64 1, i64 %29, i64 %28)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %35, i64 8, i64 %33, i64 1, i64 %34, i64 %33)
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, 2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %39, i64 8, i64 %38, i64 1, i64 2, i64 %38)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %42, i64 1, i64 2, i64 %42)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 2
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %47, i64 8, i64 %46, i64 1, i64 2, i64 2)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, 1
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %51, i64 8, i64 %50, i64 1, i64 2, i64 2)
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 2
  %58 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %60 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %62 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 5, ptr %71, align 4
  %72 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 6, ptr %72, align 4
  %73 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 7, ptr %73, align 4
  %74 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 8, ptr %74, align 4
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 4, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 4, 2
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 0
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 1
  %80 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %78, i64 %79, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %82 = getelementptr inbounds i8, ptr %81, i64 0
  store i8 97, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 98, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %81, i64 2
  store i8 99, ptr %84, align 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 3, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 3, 2
  %88 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 0, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 0, 2
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %94 = getelementptr inbounds { ptr, ptr }, ptr %93, i64 0
  store { ptr, ptr } { ptr @"__llgo_stub.main.main$1", ptr null }, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 1, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 2
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 0
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 1
  %100 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %98, i64 %99, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %102 = load ptr, ptr @_llgo_int, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %102, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, ptr inttoptr (i64 100 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, ptr %101, align 8
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %101, align 8
  %106 = ptrtoint ptr %101 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %106)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %107, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, i64 3, 1
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 3, 2
  %112 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 0
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 1
  %114 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, ptr %112, i64 %113, i64 1)
  store i64 %114, ptr %108, align 4
  %115 = load i64, ptr %108, align 4
  %116 = getelementptr inbounds i8, ptr %107, i64 0
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds i8, ptr %107, i64 1
  %119 = load i8, ptr %118, align 1
  %120 = getelementptr inbounds i8, ptr %107, i64 2
  %121 = load i8, ptr %120, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %122 = zext i8 %117 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %123 = zext i8 %119 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %123)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %124 = zext i8 %121 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %125 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %107, i64 1, i64 3, i64 1, i64 3, i64 3)
  %126 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, ptr @2, i64 4, i64 1)
  store i64 %126, ptr %108, align 4
  %127 = load i64, ptr %108, align 4
  %128 = getelementptr inbounds i8, ptr %107, i64 0
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr inbounds i8, ptr %107, i64 1
  %131 = load i8, ptr %130, align 1
  %132 = getelementptr inbounds i8, ptr %107, i64 2
  %133 = load i8, ptr %132, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %127)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %134 = zext i8 %129 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %134)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %135 = zext i8 %131 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %136 = zext i8 %133 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %136)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %138 = getelementptr inbounds { ptr }, ptr %137, i32 0, i32 0
  store ptr %108, ptr %138, align 8
  %139 = insertvalue { ptr, ptr } { ptr @"main.main$3", ptr undef }, ptr %137, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @main.demo)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"main.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %140 = extractvalue { ptr, ptr } %139, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %140)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %142 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %141)
  %143 = extractvalue { i1, i64, i32 } %142, 0
  br i1 %143, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %144 = extractvalue { i1, i64, i32 } %142, 1
  %145 = extractvalue { i1, i64, i32 } %142, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %146 = sext i32 %145 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %146)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %147 = call double @main.Inf(i64 1)
  %148 = call double @main.Inf(i64 -1)
  %149 = call double @main.NaN()
  %150 = call double @main.NaN()
  %151 = call i1 @main.IsNaN(double %150)
  %152 = call i1 @main.IsNaN(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %147)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %148)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %149)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %151)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %152)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %153 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  %154 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %155 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153)
  %156 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154)
  %157 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, 0
  %158 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, 1
  %159 = icmp sge i64 3, %158
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %159)
  %160 = getelementptr inbounds i8, ptr %157, i64 3
  %161 = load i8, ptr %160, align 1
  %162 = sext i8 %161 to i32
  %163 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %162)
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, 0
  %165 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, 1
  %166 = icmp sge i64 0, %165
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %166)
  %167 = getelementptr inbounds i32, ptr %164, i64 0
  %168 = load i32, ptr %167, align 4
  %169 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %168)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %156)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %163)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %169)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %170 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 })
  %171 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %172 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %173 = xor i1 %172, true
  %174 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %175 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 })
  %176 = xor i1 %175, true
  %177 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 })
  %178 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %179 = xor i1 %178, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %170)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %173)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %174)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %176)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %179)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.main$1"() {
_llgo_0:
  ret void
}

define void @"main.main$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.main$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

define linkonce void @"__llgo_stub.main.main$1"(ptr %0) {
_llgo_0:
  tail call void @"main.main$1"()
  ret void
}

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
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")
