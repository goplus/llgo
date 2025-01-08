; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%main.stringStruct = type { ptr, i64 }
%main.slice = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@main.minhexdigits = global i64 0, align 8
@0 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@_llgo_float32 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [10 x i8] c"check bool", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [8 x i8] c"check &^", align 1
@_llgo_int32 = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@_llgo_int16 = linkonce global ptr null, align 8
@_llgo_int64 = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_byte = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@_llgo_uint32 = linkonce global ptr null, align 8
@_llgo_uint64 = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@_llgo_complex128 = linkonce global ptr null, align 8
@_llgo_uint = linkonce global ptr null, align 8
@_llgo_complex64 = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"(", align 1
@5 = private unnamed_addr constant [2 x i8] c"i)", align 1
@6 = private unnamed_addr constant [4 x i8] c"true", align 1
@7 = private unnamed_addr constant [5 x i8] c"false", align 1
@8 = private unnamed_addr constant [3 x i8] c"NaN", align 1
@9 = private unnamed_addr constant [4 x i8] c"+Inf", align 1
@10 = private unnamed_addr constant [4 x i8] c"-Inf", align 1
@11 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@12 = private unnamed_addr constant [1 x i8] c"-", align 1
@13 = private unnamed_addr constant [1 x i8] c" ", align 1
@14 = private unnamed_addr constant [1 x i8] c"\0A", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = call ptr @main.stringStructOf(ptr %1)
  %4 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  %10 = getelementptr inbounds %main.stringStruct, ptr %3, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %main.slice, ptr %2, i32 0, i32 2
  store i64 %11, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13
}

define void @main.gwrite(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %4 = phi i64 [ -1, %_llgo_2 ], [ %5, %_llgo_4 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds i8, ptr %7, i64 %5
  %13 = load i8, ptr %12, align 1
  %14 = call i32 (ptr, ...) @printf(ptr @0, i8 %13)
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_3
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  store i64 0, ptr @main.minhexdigits, align 4
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
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @main.printnl()
  call void @main.printuint(i64 1024)
  call void @main.printnl()
  call void @main.printhex(i64 305441743)
  call void @main.printnl()
  call void @main.prinxor(i64 1)
  call void @main.printnl()
  call void @main.prinsub(i64 100)
  call void @main.printnl()
  call void @main.prinusub(i64 -1)
  call void @main.printnl()
  call void @main.prinfsub(double 1.001000e+02)
  call void @main.printnl()
  %2 = load ptr, ptr @_llgo_float32, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr inttoptr (i32 1315859240 to ptr), 1
  call void @main.printany(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  call void @main.printnl()
  %5 = load ptr, ptr @_llgo_float64, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr inttoptr (i64 4746175415993761792 to ptr), 1
  call void @main.printany(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  call void @main.printnl()
  br i1 true, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %8, i64 0
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 10 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %11, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr %9, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %8, i64 1
  %15 = load ptr, ptr @_llgo_bool, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr inttoptr (i64 -1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %14, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 2
  call void @main.println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3, %_llgo_0
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %21, i64 0
  %23 = load ptr, ptr @_llgo_string, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %25, ptr %24, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %22, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %21, i64 1
  %28 = load ptr, ptr @_llgo_bool, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr inttoptr (i64 -1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr %27, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %21, i64 2
  %32 = load ptr, ptr @_llgo_bool, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr inttoptr (i64 -1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %31, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 3, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 3, 2
  call void @main.println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 256)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 0
  %40 = load ptr, ptr @_llgo_bool, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr inttoptr (i64 -1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %39, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 1
  %44 = load ptr, ptr @_llgo_bool, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %43, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 2
  %48 = load ptr, ptr @_llgo_int32, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr inttoptr (i64 97 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %47, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 3
  %52 = load ptr, ptr @_llgo_int32, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %52, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr inttoptr (i64 65 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %54, ptr %51, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 4
  %56 = load ptr, ptr @_llgo_int32, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %56, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr inttoptr (i64 20013 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %55, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 5
  %60 = load ptr, ptr @_llgo_int8, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, ptr %59, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 6
  %64 = load ptr, ptr @_llgo_int16, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr inttoptr (i64 2 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr %63, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 7
  %68 = load ptr, ptr @_llgo_int32, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %68, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr inttoptr (i64 3 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %70, ptr %67, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 8
  %72 = load ptr, ptr @_llgo_int64, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %72, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr inttoptr (i64 4 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %71, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 9
  %76 = load ptr, ptr @_llgo_int, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %76, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, ptr inttoptr (i64 5 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, ptr %75, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 10
  %80 = load ptr, ptr @_llgo_byte, align 8
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %80, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %81, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, ptr %79, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 11
  %84 = load ptr, ptr @_llgo_uint16, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %84, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr inttoptr (i64 2 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %83, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 12
  %88 = load ptr, ptr @_llgo_uint32, align 8
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %88, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr inttoptr (i64 3 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %87, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 13
  %92 = load ptr, ptr @_llgo_uint64, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %92, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %93, ptr inttoptr (i64 4 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, ptr %91, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 14
  %96 = load ptr, ptr @_llgo_uintptr, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %96, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %97, ptr inttoptr (i64 5 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, ptr %95, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %38, i64 15
  %100 = load ptr, ptr @_llgo_string, align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %101, align 8
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %100, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %102, ptr %101, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, ptr %99, align 8
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %38, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 16, 1
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, i64 16, 2
  call void @main.println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %108 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %107, i64 0
  %109 = load ptr, ptr @_llgo_complex128, align 8
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { double, double } { double 1.000000e+00, double 2.000000e+00 }, ptr %110, align 8
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %109, 0
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %111, ptr %110, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %112, ptr %108, align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %107, 0
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 1, 1
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, i64 1, 2
  call void @main.println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115)
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_0
  br i1 true, label %_llgo_1, label %_llgo_2
}

define void @main.prinfsub(double %0) {
_llgo_0:
  %1 = fneg double %0
  call void @main.printfloat(double %1)
  ret void
}

define void @main.prinsub(i64 %0) {
_llgo_0:
  %1 = sub i64 0, %0
  call void @main.printint(i64 %1)
  ret void
}

define void @main.printany(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = load ptr, ptr @_llgo_bool, align 8
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %_llgo_35, label %_llgo_36

_llgo_1:                                          ; preds = %_llgo_34, %_llgo_85, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_37
  call void @main.printbool(i1 %71)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_37
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_38, label %_llgo_39

_llgo_4:                                          ; preds = %_llgo_40
  call void @main.printint(i64 %78)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_40
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %8 = load ptr, ptr @_llgo_int8, align 8
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %_llgo_41, label %_llgo_42

_llgo_6:                                          ; preds = %_llgo_43
  %10 = sext i8 %86 to i64
  call void @main.printint(i64 %10)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_43
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %12 = load ptr, ptr @_llgo_int16, align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_44, label %_llgo_45

_llgo_8:                                          ; preds = %_llgo_46
  %14 = sext i16 %94 to i64
  call void @main.printint(i64 %14)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_46
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %16 = load ptr, ptr @_llgo_int32, align 8
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %_llgo_47, label %_llgo_48

_llgo_10:                                         ; preds = %_llgo_49
  %18 = sext i32 %102 to i64
  call void @main.printint(i64 %18)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_49
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %20 = load ptr, ptr @_llgo_int64, align 8
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %_llgo_50, label %_llgo_51

_llgo_12:                                         ; preds = %_llgo_52
  call void @main.printint(i64 %109)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_52
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %23 = load ptr, ptr @_llgo_uint, align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_llgo_53, label %_llgo_54

_llgo_14:                                         ; preds = %_llgo_55
  call void @main.printuint(i64 %116)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_55
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %26 = load ptr, ptr @_llgo_byte, align 8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %_llgo_56, label %_llgo_57

_llgo_16:                                         ; preds = %_llgo_58
  %28 = zext i8 %124 to i64
  call void @main.printuint(i64 %28)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_58
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %30 = load ptr, ptr @_llgo_uint16, align 8
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %_llgo_59, label %_llgo_60

_llgo_18:                                         ; preds = %_llgo_61
  %32 = zext i16 %132 to i64
  call void @main.printuint(i64 %32)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_61
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %34 = load ptr, ptr @_llgo_uint32, align 8
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %_llgo_62, label %_llgo_63

_llgo_20:                                         ; preds = %_llgo_64
  %36 = zext i32 %140 to i64
  call void @main.printuint(i64 %36)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_64
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %38 = load ptr, ptr @_llgo_uint64, align 8
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %_llgo_65, label %_llgo_66

_llgo_22:                                         ; preds = %_llgo_67
  call void @main.printuint(i64 %147)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_67
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %41 = load ptr, ptr @_llgo_uintptr, align 8
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %_llgo_68, label %_llgo_69

_llgo_24:                                         ; preds = %_llgo_70
  call void @main.printuint(i64 %154)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_70
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %44 = load ptr, ptr @_llgo_float32, align 8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %_llgo_71, label %_llgo_72

_llgo_26:                                         ; preds = %_llgo_73
  %46 = fpext float %163 to double
  call void @main.printfloat(double %46)
  br label %_llgo_1

_llgo_27:                                         ; preds = %_llgo_73
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %48 = load ptr, ptr @_llgo_float64, align 8
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %_llgo_74, label %_llgo_75

_llgo_28:                                         ; preds = %_llgo_76
  call void @main.printfloat(double %171)
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_76
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %51 = load ptr, ptr @_llgo_complex64, align 8
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %_llgo_77, label %_llgo_78

_llgo_30:                                         ; preds = %_llgo_79
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 })
  %53 = extractvalue { float, float } %178, 0
  %54 = fpext float %53 to double
  call void @main.printfloat(double %54)
  %55 = extractvalue { float, float } %178, 1
  %56 = fpext float %55 to double
  call void @main.printfloat(double %56)
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 })
  br label %_llgo_1

_llgo_31:                                         ; preds = %_llgo_79
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %58 = load ptr, ptr @_llgo_complex128, align 8
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %_llgo_80, label %_llgo_81

_llgo_32:                                         ; preds = %_llgo_82
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 })
  %60 = extractvalue { double, double } %185, 0
  call void @main.printfloat(double %60)
  %61 = extractvalue { double, double } %185, 1
  call void @main.printfloat(double %61)
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 })
  br label %_llgo_1

_llgo_33:                                         ; preds = %_llgo_82
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %63 = load ptr, ptr @_llgo_string, align 8
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %_llgo_83, label %_llgo_84

_llgo_34:                                         ; preds = %_llgo_85
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" %192)
  br label %_llgo_1

_llgo_35:                                         ; preds = %_llgo_0
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %66 = ptrtoint ptr %65 to i64
  %67 = trunc i64 %66 to i1
  %68 = insertvalue { i1, i1 } undef, i1 %67, 0
  %69 = insertvalue { i1, i1 } %68, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_0
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %70 = phi { i1, i1 } [ %69, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %71 = extractvalue { i1, i1 } %70, 0
  %72 = extractvalue { i1, i1 } %70, 1
  br i1 %72, label %_llgo_2, label %_llgo_3

_llgo_38:                                         ; preds = %_llgo_3
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %74 = ptrtoint ptr %73 to i64
  %75 = insertvalue { i64, i1 } undef, i64 %74, 0
  %76 = insertvalue { i64, i1 } %75, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_3
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %77 = phi { i64, i1 } [ %76, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %78 = extractvalue { i64, i1 } %77, 0
  %79 = extractvalue { i64, i1 } %77, 1
  br i1 %79, label %_llgo_4, label %_llgo_5

_llgo_41:                                         ; preds = %_llgo_5
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %81 = ptrtoint ptr %80 to i64
  %82 = trunc i64 %81 to i8
  %83 = insertvalue { i8, i1 } undef, i8 %82, 0
  %84 = insertvalue { i8, i1 } %83, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_5
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %85 = phi { i8, i1 } [ %84, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %86 = extractvalue { i8, i1 } %85, 0
  %87 = extractvalue { i8, i1 } %85, 1
  br i1 %87, label %_llgo_6, label %_llgo_7

_llgo_44:                                         ; preds = %_llgo_7
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %89 = ptrtoint ptr %88 to i64
  %90 = trunc i64 %89 to i16
  %91 = insertvalue { i16, i1 } undef, i16 %90, 0
  %92 = insertvalue { i16, i1 } %91, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_7
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %93 = phi { i16, i1 } [ %92, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %94 = extractvalue { i16, i1 } %93, 0
  %95 = extractvalue { i16, i1 } %93, 1
  br i1 %95, label %_llgo_8, label %_llgo_9

_llgo_47:                                         ; preds = %_llgo_9
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %97 = ptrtoint ptr %96 to i64
  %98 = trunc i64 %97 to i32
  %99 = insertvalue { i32, i1 } undef, i32 %98, 0
  %100 = insertvalue { i32, i1 } %99, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_9
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %101 = phi { i32, i1 } [ %100, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %102 = extractvalue { i32, i1 } %101, 0
  %103 = extractvalue { i32, i1 } %101, 1
  br i1 %103, label %_llgo_10, label %_llgo_11

_llgo_50:                                         ; preds = %_llgo_11
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %105 = ptrtoint ptr %104 to i64
  %106 = insertvalue { i64, i1 } undef, i64 %105, 0
  %107 = insertvalue { i64, i1 } %106, i1 true, 1
  br label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_11
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %108 = phi { i64, i1 } [ %107, %_llgo_50 ], [ zeroinitializer, %_llgo_51 ]
  %109 = extractvalue { i64, i1 } %108, 0
  %110 = extractvalue { i64, i1 } %108, 1
  br i1 %110, label %_llgo_12, label %_llgo_13

_llgo_53:                                         ; preds = %_llgo_13
  %111 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %112 = ptrtoint ptr %111 to i64
  %113 = insertvalue { i64, i1 } undef, i64 %112, 0
  %114 = insertvalue { i64, i1 } %113, i1 true, 1
  br label %_llgo_55

_llgo_54:                                         ; preds = %_llgo_13
  br label %_llgo_55

_llgo_55:                                         ; preds = %_llgo_54, %_llgo_53
  %115 = phi { i64, i1 } [ %114, %_llgo_53 ], [ zeroinitializer, %_llgo_54 ]
  %116 = extractvalue { i64, i1 } %115, 0
  %117 = extractvalue { i64, i1 } %115, 1
  br i1 %117, label %_llgo_14, label %_llgo_15

_llgo_56:                                         ; preds = %_llgo_15
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %119 = ptrtoint ptr %118 to i64
  %120 = trunc i64 %119 to i8
  %121 = insertvalue { i8, i1 } undef, i8 %120, 0
  %122 = insertvalue { i8, i1 } %121, i1 true, 1
  br label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_15
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %123 = phi { i8, i1 } [ %122, %_llgo_56 ], [ zeroinitializer, %_llgo_57 ]
  %124 = extractvalue { i8, i1 } %123, 0
  %125 = extractvalue { i8, i1 } %123, 1
  br i1 %125, label %_llgo_16, label %_llgo_17

_llgo_59:                                         ; preds = %_llgo_17
  %126 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %127 = ptrtoint ptr %126 to i64
  %128 = trunc i64 %127 to i16
  %129 = insertvalue { i16, i1 } undef, i16 %128, 0
  %130 = insertvalue { i16, i1 } %129, i1 true, 1
  br label %_llgo_61

_llgo_60:                                         ; preds = %_llgo_17
  br label %_llgo_61

_llgo_61:                                         ; preds = %_llgo_60, %_llgo_59
  %131 = phi { i16, i1 } [ %130, %_llgo_59 ], [ zeroinitializer, %_llgo_60 ]
  %132 = extractvalue { i16, i1 } %131, 0
  %133 = extractvalue { i16, i1 } %131, 1
  br i1 %133, label %_llgo_18, label %_llgo_19

_llgo_62:                                         ; preds = %_llgo_19
  %134 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %135 = ptrtoint ptr %134 to i64
  %136 = trunc i64 %135 to i32
  %137 = insertvalue { i32, i1 } undef, i32 %136, 0
  %138 = insertvalue { i32, i1 } %137, i1 true, 1
  br label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_19
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %139 = phi { i32, i1 } [ %138, %_llgo_62 ], [ zeroinitializer, %_llgo_63 ]
  %140 = extractvalue { i32, i1 } %139, 0
  %141 = extractvalue { i32, i1 } %139, 1
  br i1 %141, label %_llgo_20, label %_llgo_21

_llgo_65:                                         ; preds = %_llgo_21
  %142 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %143 = ptrtoint ptr %142 to i64
  %144 = insertvalue { i64, i1 } undef, i64 %143, 0
  %145 = insertvalue { i64, i1 } %144, i1 true, 1
  br label %_llgo_67

_llgo_66:                                         ; preds = %_llgo_21
  br label %_llgo_67

_llgo_67:                                         ; preds = %_llgo_66, %_llgo_65
  %146 = phi { i64, i1 } [ %145, %_llgo_65 ], [ zeroinitializer, %_llgo_66 ]
  %147 = extractvalue { i64, i1 } %146, 0
  %148 = extractvalue { i64, i1 } %146, 1
  br i1 %148, label %_llgo_22, label %_llgo_23

_llgo_68:                                         ; preds = %_llgo_23
  %149 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %150 = ptrtoint ptr %149 to i64
  %151 = insertvalue { i64, i1 } undef, i64 %150, 0
  %152 = insertvalue { i64, i1 } %151, i1 true, 1
  br label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_23
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %153 = phi { i64, i1 } [ %152, %_llgo_68 ], [ zeroinitializer, %_llgo_69 ]
  %154 = extractvalue { i64, i1 } %153, 0
  %155 = extractvalue { i64, i1 } %153, 1
  br i1 %155, label %_llgo_24, label %_llgo_25

_llgo_71:                                         ; preds = %_llgo_25
  %156 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %157 = ptrtoint ptr %156 to i64
  %158 = trunc i64 %157 to i32
  %159 = bitcast i32 %158 to float
  %160 = insertvalue { float, i1 } undef, float %159, 0
  %161 = insertvalue { float, i1 } %160, i1 true, 1
  br label %_llgo_73

_llgo_72:                                         ; preds = %_llgo_25
  br label %_llgo_73

_llgo_73:                                         ; preds = %_llgo_72, %_llgo_71
  %162 = phi { float, i1 } [ %161, %_llgo_71 ], [ zeroinitializer, %_llgo_72 ]
  %163 = extractvalue { float, i1 } %162, 0
  %164 = extractvalue { float, i1 } %162, 1
  br i1 %164, label %_llgo_26, label %_llgo_27

_llgo_74:                                         ; preds = %_llgo_27
  %165 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %166 = ptrtoint ptr %165 to i64
  %167 = bitcast i64 %166 to double
  %168 = insertvalue { double, i1 } undef, double %167, 0
  %169 = insertvalue { double, i1 } %168, i1 true, 1
  br label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_27
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %170 = phi { double, i1 } [ %169, %_llgo_74 ], [ zeroinitializer, %_llgo_75 ]
  %171 = extractvalue { double, i1 } %170, 0
  %172 = extractvalue { double, i1 } %170, 1
  br i1 %172, label %_llgo_28, label %_llgo_29

_llgo_77:                                         ; preds = %_llgo_29
  %173 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %174 = load { float, float }, ptr %173, align 4
  %175 = insertvalue { { float, float }, i1 } undef, { float, float } %174, 0
  %176 = insertvalue { { float, float }, i1 } %175, i1 true, 1
  br label %_llgo_79

_llgo_78:                                         ; preds = %_llgo_29
  br label %_llgo_79

_llgo_79:                                         ; preds = %_llgo_78, %_llgo_77
  %177 = phi { { float, float }, i1 } [ %176, %_llgo_77 ], [ zeroinitializer, %_llgo_78 ]
  %178 = extractvalue { { float, float }, i1 } %177, 0
  %179 = extractvalue { { float, float }, i1 } %177, 1
  br i1 %179, label %_llgo_30, label %_llgo_31

_llgo_80:                                         ; preds = %_llgo_31
  %180 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %181 = load { double, double }, ptr %180, align 8
  %182 = insertvalue { { double, double }, i1 } undef, { double, double } %181, 0
  %183 = insertvalue { { double, double }, i1 } %182, i1 true, 1
  br label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_31
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %184 = phi { { double, double }, i1 } [ %183, %_llgo_80 ], [ zeroinitializer, %_llgo_81 ]
  %185 = extractvalue { { double, double }, i1 } %184, 0
  %186 = extractvalue { { double, double }, i1 } %184, 1
  br i1 %186, label %_llgo_32, label %_llgo_33

_llgo_83:                                         ; preds = %_llgo_33
  %187 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %188 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %187, align 8
  %189 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %188, 0
  %190 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %189, i1 true, 1
  br label %_llgo_85

_llgo_84:                                         ; preds = %_llgo_33
  br label %_llgo_85

_llgo_85:                                         ; preds = %_llgo_84, %_llgo_83
  %191 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } [ %190, %_llgo_83 ], [ zeroinitializer, %_llgo_84 ]
  %192 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %191, 0
  %193 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %191, 1
  br i1 %193, label %_llgo_34, label %_llgo_1
}

define void @main.printbool(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 })
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 })
  br label %_llgo_2
}

define void @main.printfloat(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 })
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 })
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %2 = fadd double %0, %0
  %3 = fcmp oeq double %2, %0
  br i1 %3, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_10
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 })
  ret void

_llgo_5:                                          ; preds = %_llgo_7
  %4 = fadd double %0, %0
  %5 = fcmp oeq double %4, %0
  br i1 %5, label %_llgo_9, label %_llgo_10

_llgo_6:                                          ; preds = %_llgo_3
  %6 = fcmp ogt double %0, 0.000000e+00
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %7 = phi i1 [ false, %_llgo_3 ], [ %6, %_llgo_6 ]
  br i1 %7, label %_llgo_2, label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_10
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 14)
  %9 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 43, ptr %9, align 1
  %10 = fcmp oeq double %0, 0.000000e+00
  br i1 %10, label %_llgo_11, label %_llgo_13

_llgo_9:                                          ; preds = %_llgo_5
  %11 = fcmp olt double %0, 0.000000e+00
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_5
  %12 = phi i1 [ false, %_llgo_5 ], [ %11, %_llgo_9 ]
  br i1 %12, label %_llgo_4, label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %13 = fdiv double 1.000000e+00, %0
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %_llgo_14, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_24, %_llgo_23, %_llgo_14, %_llgo_11
  %15 = phi double [ %0, %_llgo_11 ], [ %36, %_llgo_23 ], [ %0, %_llgo_14 ], [ %39, %_llgo_24 ]
  %16 = phi i64 [ 0, %_llgo_11 ], [ %29, %_llgo_23 ], [ 0, %_llgo_14 ], [ %38, %_llgo_24 ]
  br label %_llgo_25

_llgo_13:                                         ; preds = %_llgo_8
  %17 = fcmp olt double %0, 0.000000e+00
  br i1 %17, label %_llgo_15, label %_llgo_17

_llgo_14:                                         ; preds = %_llgo_11
  %18 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 45, ptr %18, align 1
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_13
  %19 = fneg double %0
  %20 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 45, ptr %20, align 1
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %21 = add i64 %24, 1
  %22 = fdiv double %23, 1.000000e+01
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_13
  %23 = phi double [ %0, %_llgo_13 ], [ %22, %_llgo_16 ], [ %19, %_llgo_15 ]
  %24 = phi i64 [ 0, %_llgo_13 ], [ %21, %_llgo_16 ], [ 0, %_llgo_15 ]
  %25 = fcmp oge double %23, 1.000000e+01
  br i1 %25, label %_llgo_16, label %_llgo_20

_llgo_18:                                         ; preds = %_llgo_20
  %26 = sub i64 %29, 1
  %27 = fmul double %28, 1.000000e+01
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_20
  br label %_llgo_21

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_17
  %28 = phi double [ %23, %_llgo_17 ], [ %27, %_llgo_18 ]
  %29 = phi i64 [ %24, %_llgo_17 ], [ %26, %_llgo_18 ]
  %30 = fcmp olt double %28, 1.000000e+00
  br i1 %30, label %_llgo_18, label %_llgo_19

_llgo_21:                                         ; preds = %_llgo_22, %_llgo_19
  %31 = phi double [ 5.000000e+00, %_llgo_19 ], [ %34, %_llgo_22 ]
  %32 = phi i64 [ 0, %_llgo_19 ], [ %35, %_llgo_22 ]
  %33 = icmp slt i64 %32, 7
  br i1 %33, label %_llgo_22, label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_21
  %34 = fdiv double %31, 1.000000e+01
  %35 = add i64 %32, 1
  br label %_llgo_21

_llgo_23:                                         ; preds = %_llgo_21
  %36 = fadd double %28, %31
  %37 = fcmp oge double %36, 1.000000e+01
  br i1 %37, label %_llgo_24, label %_llgo_12

_llgo_24:                                         ; preds = %_llgo_23
  %38 = add i64 %29, 1
  %39 = fdiv double %36, 1.000000e+01
  br label %_llgo_12

_llgo_25:                                         ; preds = %_llgo_26, %_llgo_12
  %40 = phi double [ %15, %_llgo_12 ], [ %53, %_llgo_26 ]
  %41 = phi i64 [ 0, %_llgo_12 ], [ %54, %_llgo_26 ]
  %42 = icmp slt i64 %41, 7
  br i1 %42, label %_llgo_26, label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_25
  %43 = fptosi double %40 to i64
  %44 = add i64 %41, 2
  %45 = add i64 %43, 48
  %46 = trunc i64 %45 to i8
  %47 = icmp slt i64 %44, 0
  %48 = icmp sge i64 %44, 14
  %49 = or i1 %48, %47
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %49)
  %50 = getelementptr inbounds i8, ptr %8, i64 %44
  store i8 %46, ptr %50, align 1
  %51 = sitofp i64 %43 to double
  %52 = fsub double %40, %51
  %53 = fmul double %52, 1.000000e+01
  %54 = add i64 %41, 1
  br label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_25
  %55 = getelementptr inbounds i8, ptr %8, i64 2
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 46, ptr %58, align 1
  %59 = getelementptr inbounds i8, ptr %8, i64 9
  store i8 101, ptr %59, align 1
  %60 = getelementptr inbounds i8, ptr %8, i64 10
  store i8 43, ptr %60, align 1
  %61 = icmp slt i64 %16, 0
  br i1 %61, label %_llgo_28, label %_llgo_29

_llgo_28:                                         ; preds = %_llgo_27
  %62 = sub i64 0, %16
  %63 = getelementptr inbounds i8, ptr %8, i64 10
  store i8 45, ptr %63, align 1
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_27
  %64 = phi i64 [ %16, %_llgo_27 ], [ %62, %_llgo_28 ]
  %65 = sdiv i64 %64, 100
  %66 = trunc i64 %65 to i8
  %67 = add i8 %66, 48
  %68 = getelementptr inbounds i8, ptr %8, i64 11
  store i8 %67, ptr %68, align 1
  %69 = sdiv i64 %64, 10
  %70 = trunc i64 %69 to i8
  %71 = urem i8 %70, 10
  %72 = add i8 %71, 48
  %73 = getelementptr inbounds i8, ptr %8, i64 12
  store i8 %72, ptr %73, align 1
  %74 = srem i64 %64, 10
  %75 = trunc i64 %74 to i8
  %76 = add i8 %75, 48
  %77 = getelementptr inbounds i8, ptr %8, i64 13
  store i8 %76, ptr %77, align 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 14, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, i64 14, 2
  call void @main.gwrite(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80)
  ret void
}

define void @main.printhex(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %22, 16
  %3 = icmp sge i64 %2, 16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %3)
  %4 = getelementptr inbounds i8, ptr @11, i64 %2
  %5 = load i8, ptr %4, align 1
  %6 = icmp slt i64 %23, 0
  %7 = icmp sge i64 %23, 100
  %8 = or i1 %7, %6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %8)
  %9 = getelementptr inbounds i8, ptr %1, i64 %23
  store i8 %5, ptr %9, align 1
  %10 = icmp ult i64 %22, 16
  br i1 %10, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_3
  %11 = sub i64 %23, 1
  %12 = icmp slt i64 %11, 0
  %13 = icmp sge i64 %11, 100
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i8, ptr %1, i64 %11
  store i8 120, ptr %15, align 1
  %16 = sub i64 %11, 1
  %17 = icmp slt i64 %16, 0
  %18 = icmp sge i64 %16, 100
  %19 = or i1 %18, %17
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %19)
  %20 = getelementptr inbounds i8, ptr %1, i64 %16
  store i8 48, ptr %20, align 1
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %16, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %22 = phi i64 [ %0, %_llgo_0 ], [ %25, %_llgo_4 ]
  %23 = phi i64 [ 99, %_llgo_0 ], [ %26, %_llgo_4 ]
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_1
  %25 = udiv i64 %22, 16
  %26 = sub i64 %23, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_1
  %27 = sub i64 100, %23
  %28 = load i64, ptr @main.minhexdigits, align 4
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %_llgo_2, label %_llgo_4
}

define void @main.printint(i64 %0) {
_llgo_0:
  %1 = icmp slt i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 1 })
  %2 = sub i64 0, %0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = phi i64 [ %0, %_llgo_0 ], [ %2, %_llgo_1 ]
  call void @main.printuint(i64 %3)
  ret void
}

define void @main.println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_5 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp sge i64 %3, %6
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %5, i64 %3
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %10, align 8
  %12 = icmp ne i64 %3, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  call void @main.printnl()
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 1 })
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  call void @main.printany(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  br label %_llgo_1
}

define void @main.printnl() {
_llgo_0:
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 1 })
  ret void
}

define void @main.printsp() {
_llgo_0:
  call void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 1 })
  ret void
}

define void @main.printstring(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  call void @main.gwrite(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  ret void
}

define void @main.printuint(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %11, 10
  %3 = add i64 %2, 48
  %4 = trunc i64 %3 to i8
  %5 = icmp slt i64 %12, 0
  %6 = icmp sge i64 %12, 100
  %7 = or i1 %6, %5
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %7)
  %8 = getelementptr inbounds i8, ptr %1, i64 %12
  store i8 %4, ptr %8, align 1
  %9 = icmp ult i64 %11, 10
  br i1 %9, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3
  %10 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %12, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %11 = phi i64 [ %0, %_llgo_0 ], [ %14, %_llgo_4 ]
  %12 = phi i64 [ 99, %_llgo_0 ], [ %15, %_llgo_4 ]
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %14 = udiv i64 %11, 10
  %15 = sub i64 %12, 1
  br label %_llgo_3
}

define void @main.prinusub(i64 %0) {
_llgo_0:
  %1 = sub i64 0, %0
  call void @main.printuint(i64 %1)
  ret void
}

define void @main.prinxor(i64 %0) {
_llgo_0:
  %1 = xor i64 %0, -1
  call void @main.printint(i64 %1)
  ret void
}

define ptr @main.stringStructOf(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %2, ptr @_llgo_float32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float64, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %5, ptr @_llgo_float64, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %8, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_bool, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %11, ptr @_llgo_bool, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %12 = load ptr, ptr @_llgo_int32, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %14, ptr @_llgo_int32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %15 = load ptr, ptr @_llgo_int8, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %17, ptr @_llgo_int8, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %18 = load ptr, ptr @_llgo_int16, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 36)
  store ptr %20, ptr @_llgo_int16, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %21 = load ptr, ptr @_llgo_int64, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  store ptr %23, ptr @_llgo_int64, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %26, ptr @_llgo_int, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %27 = load ptr, ptr @_llgo_byte, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %29, ptr @_llgo_byte, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %30 = load ptr, ptr @_llgo_uint16, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %32, ptr @_llgo_uint16, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %33 = load ptr, ptr @_llgo_uint32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %35, ptr @_llgo_uint32, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %36 = load ptr, ptr @_llgo_uint64, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 43)
  store ptr %38, ptr @_llgo_uint64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %39 = load ptr, ptr @_llgo_uintptr, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %41, ptr @_llgo_uintptr, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %42 = load ptr, ptr @_llgo_complex128, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 16)
  store ptr %44, ptr @_llgo_complex128, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %45 = load ptr, ptr @_llgo_uint, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %47, ptr @_llgo_uint, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %48 = load ptr, ptr @_llgo_complex64, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 15)
  store ptr %50, ptr @_llgo_complex64, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)
