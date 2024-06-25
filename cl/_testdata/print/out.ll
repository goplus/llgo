; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.stringStruct = type { ptr, i64 }
%main.slice = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }

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
@_llgo_uint8 = linkonce global ptr null, align 8
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

define %"github.com/goplus/llgo/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
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
  %13 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %13
}

define void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %4 = phi i64 [ -1, %_llgo_2 ], [ %5, %_llgo_4 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %11)
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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 4, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
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
  %6 = load ptr, ptr @_llgo_float32, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr inttoptr (i32 1315859240 to ptr), ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.eface" %10)
  call void @main.printnl()
  %11 = load ptr, ptr @_llgo_float64, align 8
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, i32 0, i32 1
  store ptr inttoptr (i64 4746175415993761792 to ptr), ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %12, align 8
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.eface" %15)
  call void @main.printnl()
  br i1 true, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %16, i64 0
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @2, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 10, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = load ptr, ptr @_llgo_string, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %21, ptr %23, align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 0
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 1
  store ptr %23, ptr %26, align 8
  %27 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %27, ptr %17, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %16, i64 1
  %29 = load ptr, ptr @_llgo_bool, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 0
  store ptr %29, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %32, align 8
  %33 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %33, ptr %28, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 0
  store ptr %16, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 1
  store i64 2, ptr %36, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 2
  store i64 2, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %38)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3, %_llgo_0
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i64 0
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @3, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 8, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = load ptr, ptr @_llgo_string, align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %44, ptr %46, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %47, i32 0, i32 0
  store ptr %45, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %47, i32 0, i32 1
  store ptr %46, ptr %49, align 8
  %50 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %47, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %50, ptr %40, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i64 1
  %52 = load ptr, ptr @_llgo_bool, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %56, ptr %51, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i64 2
  %58 = load ptr, ptr @_llgo_bool, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %59, i32 0, i32 0
  store ptr %58, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %59, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %61, align 8
  %62 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %59, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %62, ptr %57, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 0
  store ptr %39, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 1
  store i64 3, ptr %65, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 2
  store i64 3, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %67)
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 256)
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 0
  %70 = load ptr, ptr @_llgo_bool, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %71, i32 0, i32 0
  store ptr %70, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %71, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %73, align 8
  %74 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %71, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %74, ptr %69, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 1
  %76 = load ptr, ptr @_llgo_bool, align 8
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %77, i32 0, i32 0
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %77, i32 0, i32 1
  store ptr null, ptr %79, align 8
  %80 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %77, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %80, ptr %75, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 2
  %82 = load ptr, ptr @_llgo_int32, align 8
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i32 0, i32 0
  store ptr %82, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i32 0, i32 1
  store ptr inttoptr (i64 97 to ptr), ptr %85, align 8
  %86 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %86, ptr %81, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 3
  %88 = load ptr, ptr @_llgo_int32, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 0
  store ptr %88, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 1
  store ptr inttoptr (i64 65 to ptr), ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %92, ptr %87, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 4
  %94 = load ptr, ptr @_llgo_int32, align 8
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %95, i32 0, i32 0
  store ptr %94, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %95, i32 0, i32 1
  store ptr inttoptr (i64 20013 to ptr), ptr %97, align 8
  %98 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %95, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %98, ptr %93, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 5
  %100 = load ptr, ptr @_llgo_int8, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %101, i32 0, i32 0
  store ptr %100, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %101, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %103, align 8
  %104 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %101, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %104, ptr %99, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 6
  %106 = load ptr, ptr @_llgo_int16, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, i32 0, i32 0
  store ptr %106, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, i32 0, i32 1
  store ptr inttoptr (i64 2 to ptr), ptr %109, align 8
  %110 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %110, ptr %105, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 7
  %112 = load ptr, ptr @_llgo_int32, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, i32 0, i32 0
  store ptr %112, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, i32 0, i32 1
  store ptr inttoptr (i64 3 to ptr), ptr %115, align 8
  %116 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %116, ptr %111, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 8
  %118 = load ptr, ptr @_llgo_int64, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %119, i32 0, i32 0
  store ptr %118, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %119, i32 0, i32 1
  store ptr inttoptr (i64 4 to ptr), ptr %121, align 8
  %122 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %119, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %122, ptr %117, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 9
  %124 = load ptr, ptr @_llgo_int, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, i32 0, i32 0
  store ptr %124, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, i32 0, i32 1
  store ptr inttoptr (i64 5 to ptr), ptr %127, align 8
  %128 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %128, ptr %123, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 10
  %130 = load ptr, ptr @_llgo_uint8, align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %131, i32 0, i32 0
  store ptr %130, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %131, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %133, align 8
  %134 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %131, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %134, ptr %129, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 11
  %136 = load ptr, ptr @_llgo_uint16, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, i32 0, i32 0
  store ptr %136, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, i32 0, i32 1
  store ptr inttoptr (i64 2 to ptr), ptr %139, align 8
  %140 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %140, ptr %135, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 12
  %142 = load ptr, ptr @_llgo_uint32, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, i32 0, i32 0
  store ptr %142, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, i32 0, i32 1
  store ptr inttoptr (i64 3 to ptr), ptr %145, align 8
  %146 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %146, ptr %141, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 13
  %148 = load ptr, ptr @_llgo_uint64, align 8
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %149, i32 0, i32 0
  store ptr %148, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %149, i32 0, i32 1
  store ptr inttoptr (i64 4 to ptr), ptr %151, align 8
  %152 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %149, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %152, ptr %147, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 14
  %154 = load ptr, ptr @_llgo_uintptr, align 8
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %155, i32 0, i32 0
  store ptr %154, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %155, i32 0, i32 1
  store ptr inttoptr (i64 5 to ptr), ptr %157, align 8
  %158 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %155, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %158, ptr %153, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i64 15
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @1, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 4, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = load ptr, ptr @_llgo_string, align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %163, ptr %165, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %166, i32 0, i32 0
  store ptr %164, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %166, i32 0, i32 1
  store ptr %165, ptr %168, align 8
  %169 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %166, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %169, ptr %159, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, i32 0, i32 0
  store ptr %68, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, i32 0, i32 1
  store i64 16, ptr %172, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, i32 0, i32 2
  store i64 16, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %174)
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %175, i64 0
  %177 = load ptr, ptr @_llgo_complex128, align 8
  %178 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { double, double } { double 1.000000e+00, double 2.000000e+00 }, ptr %178, align 8
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %179, i32 0, i32 0
  store ptr %177, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %179, i32 0, i32 1
  store ptr %178, ptr %181, align 8
  %182 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %179, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %182, ptr %176, align 8
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 0
  store ptr %175, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 1
  store i64 1, ptr %185, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 2
  store i64 1, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %187)
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

define void @main.printany(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %2 = load ptr, ptr @_llgo_bool, align 8
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %_llgo_35, label %_llgo_36

_llgo_1:                                          ; preds = %_llgo_34, %_llgo_85, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_37
  call void @main.printbool(i1 %93)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_37
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_38, label %_llgo_39

_llgo_4:                                          ; preds = %_llgo_40
  call void @main.printint(i64 %106)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_40
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %8 = load ptr, ptr @_llgo_int8, align 8
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %_llgo_41, label %_llgo_42

_llgo_6:                                          ; preds = %_llgo_43
  %10 = sext i8 %120 to i64
  call void @main.printint(i64 %10)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_43
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %12 = load ptr, ptr @_llgo_int16, align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_44, label %_llgo_45

_llgo_8:                                          ; preds = %_llgo_46
  %14 = sext i16 %134 to i64
  call void @main.printint(i64 %14)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_46
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %16 = load ptr, ptr @_llgo_int32, align 8
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %_llgo_47, label %_llgo_48

_llgo_10:                                         ; preds = %_llgo_49
  %18 = sext i32 %148 to i64
  call void @main.printint(i64 %18)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_49
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %20 = load ptr, ptr @_llgo_int64, align 8
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %_llgo_50, label %_llgo_51

_llgo_12:                                         ; preds = %_llgo_52
  call void @main.printint(i64 %161)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_52
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %23 = load ptr, ptr @_llgo_uint, align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_llgo_53, label %_llgo_54

_llgo_14:                                         ; preds = %_llgo_55
  call void @main.printuint(i64 %174)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_55
  %25 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %26 = load ptr, ptr @_llgo_uint8, align 8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %_llgo_56, label %_llgo_57

_llgo_16:                                         ; preds = %_llgo_58
  %28 = zext i8 %188 to i64
  call void @main.printuint(i64 %28)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_58
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %30 = load ptr, ptr @_llgo_uint16, align 8
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %_llgo_59, label %_llgo_60

_llgo_18:                                         ; preds = %_llgo_61
  %32 = zext i16 %202 to i64
  call void @main.printuint(i64 %32)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_61
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %34 = load ptr, ptr @_llgo_uint32, align 8
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %_llgo_62, label %_llgo_63

_llgo_20:                                         ; preds = %_llgo_64
  %36 = zext i32 %216 to i64
  call void @main.printuint(i64 %36)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_64
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %38 = load ptr, ptr @_llgo_uint64, align 8
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %_llgo_65, label %_llgo_66

_llgo_22:                                         ; preds = %_llgo_67
  call void @main.printuint(i64 %229)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_67
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %41 = load ptr, ptr @_llgo_uintptr, align 8
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %_llgo_68, label %_llgo_69

_llgo_24:                                         ; preds = %_llgo_70
  call void @main.printuint(i64 %242)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_70
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %44 = load ptr, ptr @_llgo_float32, align 8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %_llgo_71, label %_llgo_72

_llgo_26:                                         ; preds = %_llgo_73
  %46 = fpext float %257 to double
  call void @main.printfloat(double %46)
  br label %_llgo_1

_llgo_27:                                         ; preds = %_llgo_73
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %48 = load ptr, ptr @_llgo_float64, align 8
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %_llgo_74, label %_llgo_75

_llgo_28:                                         ; preds = %_llgo_76
  call void @main.printfloat(double %271)
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_76
  %50 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %51 = load ptr, ptr @_llgo_complex64, align 8
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %_llgo_77, label %_llgo_78

_llgo_30:                                         ; preds = %_llgo_79
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @4, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 1, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %56)
  %57 = extractvalue { float, float } %284, 0
  %58 = fpext float %57 to double
  call void @main.printfloat(double %58)
  %59 = extractvalue { float, float } %284, 1
  %60 = fpext float %59 to double
  call void @main.printfloat(double %60)
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr @5, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 2, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %64)
  br label %_llgo_1

_llgo_31:                                         ; preds = %_llgo_79
  %65 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %66 = load ptr, ptr @_llgo_complex128, align 8
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %_llgo_80, label %_llgo_81

_llgo_32:                                         ; preds = %_llgo_82
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 0
  store ptr @4, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 1
  store i64 1, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %68, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %71)
  %72 = extractvalue { double, double } %297, 0
  call void @main.printfloat(double %72)
  %73 = extractvalue { double, double } %297, 1
  call void @main.printfloat(double %73)
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @5, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 2, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %77)
  br label %_llgo_1

_llgo_33:                                         ; preds = %_llgo_82
  %78 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %79 = load ptr, ptr @_llgo_string, align 8
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %_llgo_83, label %_llgo_84

_llgo_34:                                         ; preds = %_llgo_85
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %310)
  br label %_llgo_1

_llgo_35:                                         ; preds = %_llgo_0
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %82 = ptrtoint ptr %81 to i64
  %83 = trunc i64 %82 to i1
  %84 = alloca { i1, i1 }, align 8
  %85 = getelementptr inbounds { i1, i1 }, ptr %84, i32 0, i32 0
  store i1 %83, ptr %85, align 1
  %86 = getelementptr inbounds { i1, i1 }, ptr %84, i32 0, i32 1
  store i1 true, ptr %86, align 1
  %87 = load { i1, i1 }, ptr %84, align 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_0
  %88 = alloca { i1, i1 }, align 8
  %89 = getelementptr inbounds { i1, i1 }, ptr %88, i32 0, i32 0
  store i1 false, ptr %89, align 1
  %90 = getelementptr inbounds { i1, i1 }, ptr %88, i32 0, i32 1
  store i1 false, ptr %90, align 1
  %91 = load { i1, i1 }, ptr %88, align 1
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %92 = phi { i1, i1 } [ %87, %_llgo_35 ], [ %91, %_llgo_36 ]
  %93 = extractvalue { i1, i1 } %92, 0
  %94 = extractvalue { i1, i1 } %92, 1
  br i1 %94, label %_llgo_2, label %_llgo_3

_llgo_38:                                         ; preds = %_llgo_3
  %95 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %96 = ptrtoint ptr %95 to i64
  %97 = alloca { i64, i1 }, align 8
  %98 = getelementptr inbounds { i64, i1 }, ptr %97, i32 0, i32 0
  store i64 %96, ptr %98, align 4
  %99 = getelementptr inbounds { i64, i1 }, ptr %97, i32 0, i32 1
  store i1 true, ptr %99, align 1
  %100 = load { i64, i1 }, ptr %97, align 4
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_3
  %101 = alloca { i64, i1 }, align 8
  %102 = getelementptr inbounds { i64, i1 }, ptr %101, i32 0, i32 0
  store i64 0, ptr %102, align 4
  %103 = getelementptr inbounds { i64, i1 }, ptr %101, i32 0, i32 1
  store i1 false, ptr %103, align 1
  %104 = load { i64, i1 }, ptr %101, align 4
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %105 = phi { i64, i1 } [ %100, %_llgo_38 ], [ %104, %_llgo_39 ]
  %106 = extractvalue { i64, i1 } %105, 0
  %107 = extractvalue { i64, i1 } %105, 1
  br i1 %107, label %_llgo_4, label %_llgo_5

_llgo_41:                                         ; preds = %_llgo_5
  %108 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %109 = ptrtoint ptr %108 to i64
  %110 = trunc i64 %109 to i8
  %111 = alloca { i8, i1 }, align 8
  %112 = getelementptr inbounds { i8, i1 }, ptr %111, i32 0, i32 0
  store i8 %110, ptr %112, align 1
  %113 = getelementptr inbounds { i8, i1 }, ptr %111, i32 0, i32 1
  store i1 true, ptr %113, align 1
  %114 = load { i8, i1 }, ptr %111, align 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_5
  %115 = alloca { i8, i1 }, align 8
  %116 = getelementptr inbounds { i8, i1 }, ptr %115, i32 0, i32 0
  store i8 0, ptr %116, align 1
  %117 = getelementptr inbounds { i8, i1 }, ptr %115, i32 0, i32 1
  store i1 false, ptr %117, align 1
  %118 = load { i8, i1 }, ptr %115, align 1
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %119 = phi { i8, i1 } [ %114, %_llgo_41 ], [ %118, %_llgo_42 ]
  %120 = extractvalue { i8, i1 } %119, 0
  %121 = extractvalue { i8, i1 } %119, 1
  br i1 %121, label %_llgo_6, label %_llgo_7

_llgo_44:                                         ; preds = %_llgo_7
  %122 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %123 = ptrtoint ptr %122 to i64
  %124 = trunc i64 %123 to i16
  %125 = alloca { i16, i1 }, align 8
  %126 = getelementptr inbounds { i16, i1 }, ptr %125, i32 0, i32 0
  store i16 %124, ptr %126, align 2
  %127 = getelementptr inbounds { i16, i1 }, ptr %125, i32 0, i32 1
  store i1 true, ptr %127, align 1
  %128 = load { i16, i1 }, ptr %125, align 2
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_7
  %129 = alloca { i16, i1 }, align 8
  %130 = getelementptr inbounds { i16, i1 }, ptr %129, i32 0, i32 0
  store i16 0, ptr %130, align 2
  %131 = getelementptr inbounds { i16, i1 }, ptr %129, i32 0, i32 1
  store i1 false, ptr %131, align 1
  %132 = load { i16, i1 }, ptr %129, align 2
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %133 = phi { i16, i1 } [ %128, %_llgo_44 ], [ %132, %_llgo_45 ]
  %134 = extractvalue { i16, i1 } %133, 0
  %135 = extractvalue { i16, i1 } %133, 1
  br i1 %135, label %_llgo_8, label %_llgo_9

_llgo_47:                                         ; preds = %_llgo_9
  %136 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %137 = ptrtoint ptr %136 to i64
  %138 = trunc i64 %137 to i32
  %139 = alloca { i32, i1 }, align 8
  %140 = getelementptr inbounds { i32, i1 }, ptr %139, i32 0, i32 0
  store i32 %138, ptr %140, align 4
  %141 = getelementptr inbounds { i32, i1 }, ptr %139, i32 0, i32 1
  store i1 true, ptr %141, align 1
  %142 = load { i32, i1 }, ptr %139, align 4
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_9
  %143 = alloca { i32, i1 }, align 8
  %144 = getelementptr inbounds { i32, i1 }, ptr %143, i32 0, i32 0
  store i32 0, ptr %144, align 4
  %145 = getelementptr inbounds { i32, i1 }, ptr %143, i32 0, i32 1
  store i1 false, ptr %145, align 1
  %146 = load { i32, i1 }, ptr %143, align 4
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %147 = phi { i32, i1 } [ %142, %_llgo_47 ], [ %146, %_llgo_48 ]
  %148 = extractvalue { i32, i1 } %147, 0
  %149 = extractvalue { i32, i1 } %147, 1
  br i1 %149, label %_llgo_10, label %_llgo_11

_llgo_50:                                         ; preds = %_llgo_11
  %150 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %151 = ptrtoint ptr %150 to i64
  %152 = alloca { i64, i1 }, align 8
  %153 = getelementptr inbounds { i64, i1 }, ptr %152, i32 0, i32 0
  store i64 %151, ptr %153, align 4
  %154 = getelementptr inbounds { i64, i1 }, ptr %152, i32 0, i32 1
  store i1 true, ptr %154, align 1
  %155 = load { i64, i1 }, ptr %152, align 4
  br label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_11
  %156 = alloca { i64, i1 }, align 8
  %157 = getelementptr inbounds { i64, i1 }, ptr %156, i32 0, i32 0
  store i64 0, ptr %157, align 4
  %158 = getelementptr inbounds { i64, i1 }, ptr %156, i32 0, i32 1
  store i1 false, ptr %158, align 1
  %159 = load { i64, i1 }, ptr %156, align 4
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %160 = phi { i64, i1 } [ %155, %_llgo_50 ], [ %159, %_llgo_51 ]
  %161 = extractvalue { i64, i1 } %160, 0
  %162 = extractvalue { i64, i1 } %160, 1
  br i1 %162, label %_llgo_12, label %_llgo_13

_llgo_53:                                         ; preds = %_llgo_13
  %163 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %164 = ptrtoint ptr %163 to i64
  %165 = alloca { i64, i1 }, align 8
  %166 = getelementptr inbounds { i64, i1 }, ptr %165, i32 0, i32 0
  store i64 %164, ptr %166, align 4
  %167 = getelementptr inbounds { i64, i1 }, ptr %165, i32 0, i32 1
  store i1 true, ptr %167, align 1
  %168 = load { i64, i1 }, ptr %165, align 4
  br label %_llgo_55

_llgo_54:                                         ; preds = %_llgo_13
  %169 = alloca { i64, i1 }, align 8
  %170 = getelementptr inbounds { i64, i1 }, ptr %169, i32 0, i32 0
  store i64 0, ptr %170, align 4
  %171 = getelementptr inbounds { i64, i1 }, ptr %169, i32 0, i32 1
  store i1 false, ptr %171, align 1
  %172 = load { i64, i1 }, ptr %169, align 4
  br label %_llgo_55

_llgo_55:                                         ; preds = %_llgo_54, %_llgo_53
  %173 = phi { i64, i1 } [ %168, %_llgo_53 ], [ %172, %_llgo_54 ]
  %174 = extractvalue { i64, i1 } %173, 0
  %175 = extractvalue { i64, i1 } %173, 1
  br i1 %175, label %_llgo_14, label %_llgo_15

_llgo_56:                                         ; preds = %_llgo_15
  %176 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %177 = ptrtoint ptr %176 to i64
  %178 = trunc i64 %177 to i8
  %179 = alloca { i8, i1 }, align 8
  %180 = getelementptr inbounds { i8, i1 }, ptr %179, i32 0, i32 0
  store i8 %178, ptr %180, align 1
  %181 = getelementptr inbounds { i8, i1 }, ptr %179, i32 0, i32 1
  store i1 true, ptr %181, align 1
  %182 = load { i8, i1 }, ptr %179, align 1
  br label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_15
  %183 = alloca { i8, i1 }, align 8
  %184 = getelementptr inbounds { i8, i1 }, ptr %183, i32 0, i32 0
  store i8 0, ptr %184, align 1
  %185 = getelementptr inbounds { i8, i1 }, ptr %183, i32 0, i32 1
  store i1 false, ptr %185, align 1
  %186 = load { i8, i1 }, ptr %183, align 1
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %187 = phi { i8, i1 } [ %182, %_llgo_56 ], [ %186, %_llgo_57 ]
  %188 = extractvalue { i8, i1 } %187, 0
  %189 = extractvalue { i8, i1 } %187, 1
  br i1 %189, label %_llgo_16, label %_llgo_17

_llgo_59:                                         ; preds = %_llgo_17
  %190 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %191 = ptrtoint ptr %190 to i64
  %192 = trunc i64 %191 to i16
  %193 = alloca { i16, i1 }, align 8
  %194 = getelementptr inbounds { i16, i1 }, ptr %193, i32 0, i32 0
  store i16 %192, ptr %194, align 2
  %195 = getelementptr inbounds { i16, i1 }, ptr %193, i32 0, i32 1
  store i1 true, ptr %195, align 1
  %196 = load { i16, i1 }, ptr %193, align 2
  br label %_llgo_61

_llgo_60:                                         ; preds = %_llgo_17
  %197 = alloca { i16, i1 }, align 8
  %198 = getelementptr inbounds { i16, i1 }, ptr %197, i32 0, i32 0
  store i16 0, ptr %198, align 2
  %199 = getelementptr inbounds { i16, i1 }, ptr %197, i32 0, i32 1
  store i1 false, ptr %199, align 1
  %200 = load { i16, i1 }, ptr %197, align 2
  br label %_llgo_61

_llgo_61:                                         ; preds = %_llgo_60, %_llgo_59
  %201 = phi { i16, i1 } [ %196, %_llgo_59 ], [ %200, %_llgo_60 ]
  %202 = extractvalue { i16, i1 } %201, 0
  %203 = extractvalue { i16, i1 } %201, 1
  br i1 %203, label %_llgo_18, label %_llgo_19

_llgo_62:                                         ; preds = %_llgo_19
  %204 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %205 = ptrtoint ptr %204 to i64
  %206 = trunc i64 %205 to i32
  %207 = alloca { i32, i1 }, align 8
  %208 = getelementptr inbounds { i32, i1 }, ptr %207, i32 0, i32 0
  store i32 %206, ptr %208, align 4
  %209 = getelementptr inbounds { i32, i1 }, ptr %207, i32 0, i32 1
  store i1 true, ptr %209, align 1
  %210 = load { i32, i1 }, ptr %207, align 4
  br label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_19
  %211 = alloca { i32, i1 }, align 8
  %212 = getelementptr inbounds { i32, i1 }, ptr %211, i32 0, i32 0
  store i32 0, ptr %212, align 4
  %213 = getelementptr inbounds { i32, i1 }, ptr %211, i32 0, i32 1
  store i1 false, ptr %213, align 1
  %214 = load { i32, i1 }, ptr %211, align 4
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %215 = phi { i32, i1 } [ %210, %_llgo_62 ], [ %214, %_llgo_63 ]
  %216 = extractvalue { i32, i1 } %215, 0
  %217 = extractvalue { i32, i1 } %215, 1
  br i1 %217, label %_llgo_20, label %_llgo_21

_llgo_65:                                         ; preds = %_llgo_21
  %218 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %219 = ptrtoint ptr %218 to i64
  %220 = alloca { i64, i1 }, align 8
  %221 = getelementptr inbounds { i64, i1 }, ptr %220, i32 0, i32 0
  store i64 %219, ptr %221, align 4
  %222 = getelementptr inbounds { i64, i1 }, ptr %220, i32 0, i32 1
  store i1 true, ptr %222, align 1
  %223 = load { i64, i1 }, ptr %220, align 4
  br label %_llgo_67

_llgo_66:                                         ; preds = %_llgo_21
  %224 = alloca { i64, i1 }, align 8
  %225 = getelementptr inbounds { i64, i1 }, ptr %224, i32 0, i32 0
  store i64 0, ptr %225, align 4
  %226 = getelementptr inbounds { i64, i1 }, ptr %224, i32 0, i32 1
  store i1 false, ptr %226, align 1
  %227 = load { i64, i1 }, ptr %224, align 4
  br label %_llgo_67

_llgo_67:                                         ; preds = %_llgo_66, %_llgo_65
  %228 = phi { i64, i1 } [ %223, %_llgo_65 ], [ %227, %_llgo_66 ]
  %229 = extractvalue { i64, i1 } %228, 0
  %230 = extractvalue { i64, i1 } %228, 1
  br i1 %230, label %_llgo_22, label %_llgo_23

_llgo_68:                                         ; preds = %_llgo_23
  %231 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %232 = ptrtoint ptr %231 to i64
  %233 = alloca { i64, i1 }, align 8
  %234 = getelementptr inbounds { i64, i1 }, ptr %233, i32 0, i32 0
  store i64 %232, ptr %234, align 4
  %235 = getelementptr inbounds { i64, i1 }, ptr %233, i32 0, i32 1
  store i1 true, ptr %235, align 1
  %236 = load { i64, i1 }, ptr %233, align 4
  br label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_23
  %237 = alloca { i64, i1 }, align 8
  %238 = getelementptr inbounds { i64, i1 }, ptr %237, i32 0, i32 0
  store i64 0, ptr %238, align 4
  %239 = getelementptr inbounds { i64, i1 }, ptr %237, i32 0, i32 1
  store i1 false, ptr %239, align 1
  %240 = load { i64, i1 }, ptr %237, align 4
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %241 = phi { i64, i1 } [ %236, %_llgo_68 ], [ %240, %_llgo_69 ]
  %242 = extractvalue { i64, i1 } %241, 0
  %243 = extractvalue { i64, i1 } %241, 1
  br i1 %243, label %_llgo_24, label %_llgo_25

_llgo_71:                                         ; preds = %_llgo_25
  %244 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %245 = ptrtoint ptr %244 to i64
  %246 = trunc i64 %245 to i32
  %247 = bitcast i32 %246 to float
  %248 = alloca { float, i1 }, align 8
  %249 = getelementptr inbounds { float, i1 }, ptr %248, i32 0, i32 0
  store float %247, ptr %249, align 4
  %250 = getelementptr inbounds { float, i1 }, ptr %248, i32 0, i32 1
  store i1 true, ptr %250, align 1
  %251 = load { float, i1 }, ptr %248, align 4
  br label %_llgo_73

_llgo_72:                                         ; preds = %_llgo_25
  %252 = alloca { float, i1 }, align 8
  %253 = getelementptr inbounds { float, i1 }, ptr %252, i32 0, i32 0
  store double 0.000000e+00, ptr %253, align 8
  %254 = getelementptr inbounds { float, i1 }, ptr %252, i32 0, i32 1
  store i1 false, ptr %254, align 1
  %255 = load { float, i1 }, ptr %252, align 4
  br label %_llgo_73

_llgo_73:                                         ; preds = %_llgo_72, %_llgo_71
  %256 = phi { float, i1 } [ %251, %_llgo_71 ], [ %255, %_llgo_72 ]
  %257 = extractvalue { float, i1 } %256, 0
  %258 = extractvalue { float, i1 } %256, 1
  br i1 %258, label %_llgo_26, label %_llgo_27

_llgo_74:                                         ; preds = %_llgo_27
  %259 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %260 = ptrtoint ptr %259 to i64
  %261 = bitcast i64 %260 to double
  %262 = alloca { double, i1 }, align 8
  %263 = getelementptr inbounds { double, i1 }, ptr %262, i32 0, i32 0
  store double %261, ptr %263, align 8
  %264 = getelementptr inbounds { double, i1 }, ptr %262, i32 0, i32 1
  store i1 true, ptr %264, align 1
  %265 = load { double, i1 }, ptr %262, align 8
  br label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_27
  %266 = alloca { double, i1 }, align 8
  %267 = getelementptr inbounds { double, i1 }, ptr %266, i32 0, i32 0
  store double 0.000000e+00, ptr %267, align 8
  %268 = getelementptr inbounds { double, i1 }, ptr %266, i32 0, i32 1
  store i1 false, ptr %268, align 1
  %269 = load { double, i1 }, ptr %266, align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %270 = phi { double, i1 } [ %265, %_llgo_74 ], [ %269, %_llgo_75 ]
  %271 = extractvalue { double, i1 } %270, 0
  %272 = extractvalue { double, i1 } %270, 1
  br i1 %272, label %_llgo_28, label %_llgo_29

_llgo_77:                                         ; preds = %_llgo_29
  %273 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %274 = load { float, float }, ptr %273, align 4
  %275 = alloca { { float, float }, i1 }, align 8
  %276 = getelementptr inbounds { { float, float }, i1 }, ptr %275, i32 0, i32 0
  store { float, float } %274, ptr %276, align 4
  %277 = getelementptr inbounds { { float, float }, i1 }, ptr %275, i32 0, i32 1
  store i1 true, ptr %277, align 1
  %278 = load { { float, float }, i1 }, ptr %275, align 4
  br label %_llgo_79

_llgo_78:                                         ; preds = %_llgo_29
  %279 = alloca { { float, float }, i1 }, align 8
  %280 = getelementptr inbounds { { float, float }, i1 }, ptr %279, i32 0, i32 0
  store { float, float } zeroinitializer, ptr %280, align 4
  %281 = getelementptr inbounds { { float, float }, i1 }, ptr %279, i32 0, i32 1
  store i1 false, ptr %281, align 1
  %282 = load { { float, float }, i1 }, ptr %279, align 4
  br label %_llgo_79

_llgo_79:                                         ; preds = %_llgo_78, %_llgo_77
  %283 = phi { { float, float }, i1 } [ %278, %_llgo_77 ], [ %282, %_llgo_78 ]
  %284 = extractvalue { { float, float }, i1 } %283, 0
  %285 = extractvalue { { float, float }, i1 } %283, 1
  br i1 %285, label %_llgo_30, label %_llgo_31

_llgo_80:                                         ; preds = %_llgo_31
  %286 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %287 = load { double, double }, ptr %286, align 8
  %288 = alloca { { double, double }, i1 }, align 8
  %289 = getelementptr inbounds { { double, double }, i1 }, ptr %288, i32 0, i32 0
  store { double, double } %287, ptr %289, align 8
  %290 = getelementptr inbounds { { double, double }, i1 }, ptr %288, i32 0, i32 1
  store i1 true, ptr %290, align 1
  %291 = load { { double, double }, i1 }, ptr %288, align 8
  br label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_31
  %292 = alloca { { double, double }, i1 }, align 8
  %293 = getelementptr inbounds { { double, double }, i1 }, ptr %292, i32 0, i32 0
  store { double, double } zeroinitializer, ptr %293, align 8
  %294 = getelementptr inbounds { { double, double }, i1 }, ptr %292, i32 0, i32 1
  store i1 false, ptr %294, align 1
  %295 = load { { double, double }, i1 }, ptr %292, align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %296 = phi { { double, double }, i1 } [ %291, %_llgo_80 ], [ %295, %_llgo_81 ]
  %297 = extractvalue { { double, double }, i1 } %296, 0
  %298 = extractvalue { { double, double }, i1 } %296, 1
  br i1 %298, label %_llgo_32, label %_llgo_33

_llgo_83:                                         ; preds = %_llgo_33
  %299 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %300 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %299, align 8
  %301 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %302 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %301, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %300, ptr %302, align 8
  %303 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %301, i32 0, i32 1
  store i1 true, ptr %303, align 1
  %304 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %301, align 8
  br label %_llgo_85

_llgo_84:                                         ; preds = %_llgo_33
  %305 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %306 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %305, i32 0, i32 0
  store { ptr, i64 } zeroinitializer, ptr %306, align 8
  %307 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %305, i32 0, i32 1
  store i1 false, ptr %307, align 1
  %308 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %305, align 8
  br label %_llgo_85

_llgo_85:                                         ; preds = %_llgo_84, %_llgo_83
  %309 = phi { %"github.com/goplus/llgo/internal/runtime.String", i1 } [ %304, %_llgo_83 ], [ %308, %_llgo_84 ]
  %310 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %309, 0
  %311 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %309, 1
  br i1 %311, label %_llgo_34, label %_llgo_1
}

define void @main.printbool(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @6, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 4, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %4)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @7, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 5, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %8)
  br label %_llgo_2
}

define void @main.printfloat(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @8, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 3, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @9, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 4, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %9)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %10 = fadd double %0, %0
  %11 = fcmp oeq double %10, %0
  br i1 %11, label %_llgo_6, label %_llgo_7

_llgo_4:                                          ; preds = %_llgo_10
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @10, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 4, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %15)
  ret void

_llgo_5:                                          ; preds = %_llgo_7
  %16 = fadd double %0, %0
  %17 = fcmp oeq double %16, %0
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_6:                                          ; preds = %_llgo_3
  %18 = fcmp ogt double %0, 0.000000e+00
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6, %_llgo_3
  %19 = phi i1 [ false, %_llgo_3 ], [ %18, %_llgo_6 ]
  br i1 %19, label %_llgo_2, label %_llgo_5

_llgo_8:                                          ; preds = %_llgo_10
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 14)
  %21 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 43, ptr %21, align 1
  %22 = fcmp oeq double %0, 0.000000e+00
  br i1 %22, label %_llgo_11, label %_llgo_13

_llgo_9:                                          ; preds = %_llgo_5
  %23 = fcmp olt double %0, 0.000000e+00
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_5
  %24 = phi i1 [ false, %_llgo_5 ], [ %23, %_llgo_9 ]
  br i1 %24, label %_llgo_4, label %_llgo_8

_llgo_11:                                         ; preds = %_llgo_8
  %25 = fdiv double 1.000000e+00, %0
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %_llgo_14, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_24, %_llgo_22, %_llgo_14, %_llgo_11
  %27 = phi double [ %0, %_llgo_11 ], [ %45, %_llgo_22 ], [ %0, %_llgo_14 ], [ %51, %_llgo_24 ]
  %28 = phi i64 [ 0, %_llgo_11 ], [ %41, %_llgo_22 ], [ 0, %_llgo_14 ], [ %50, %_llgo_24 ]
  br label %_llgo_27

_llgo_13:                                         ; preds = %_llgo_8
  %29 = fcmp olt double %0, 0.000000e+00
  br i1 %29, label %_llgo_15, label %_llgo_17

_llgo_14:                                         ; preds = %_llgo_11
  %30 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 45, ptr %30, align 1
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_13
  %31 = fneg double %0
  %32 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 45, ptr %32, align 1
  br label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %33 = add i64 %36, 1
  %34 = fdiv double %35, 1.000000e+01
  br label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16, %_llgo_15, %_llgo_13
  %35 = phi double [ %0, %_llgo_13 ], [ %34, %_llgo_16 ], [ %31, %_llgo_15 ]
  %36 = phi i64 [ 0, %_llgo_13 ], [ %33, %_llgo_16 ], [ 0, %_llgo_15 ]
  %37 = fcmp oge double %35, 1.000000e+01
  br i1 %37, label %_llgo_16, label %_llgo_20

_llgo_18:                                         ; preds = %_llgo_20
  %38 = sub i64 %41, 1
  %39 = fmul double %40, 1.000000e+01
  br label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_20
  br label %_llgo_23

_llgo_20:                                         ; preds = %_llgo_18, %_llgo_17
  %40 = phi double [ %35, %_llgo_17 ], [ %39, %_llgo_18 ]
  %41 = phi i64 [ %36, %_llgo_17 ], [ %38, %_llgo_18 ]
  %42 = fcmp olt double %40, 1.000000e+00
  br i1 %42, label %_llgo_18, label %_llgo_19

_llgo_21:                                         ; preds = %_llgo_23
  %43 = fdiv double %47, 1.000000e+01
  %44 = add i64 %48, 1
  br label %_llgo_23

_llgo_22:                                         ; preds = %_llgo_23
  %45 = fadd double %40, %47
  %46 = fcmp oge double %45, 1.000000e+01
  br i1 %46, label %_llgo_24, label %_llgo_12

_llgo_23:                                         ; preds = %_llgo_21, %_llgo_19
  %47 = phi double [ 5.000000e+00, %_llgo_19 ], [ %43, %_llgo_21 ]
  %48 = phi i64 [ 0, %_llgo_19 ], [ %44, %_llgo_21 ]
  %49 = icmp slt i64 %48, 7
  br i1 %49, label %_llgo_21, label %_llgo_22

_llgo_24:                                         ; preds = %_llgo_22
  %50 = add i64 %41, 1
  %51 = fdiv double %45, 1.000000e+01
  br label %_llgo_12

_llgo_25:                                         ; preds = %_llgo_27
  %52 = fptosi double %71 to i64
  %53 = add i64 %72, 2
  %54 = add i64 %52, 48
  %55 = trunc i64 %54 to i8
  %56 = icmp slt i64 %53, 0
  %57 = icmp sge i64 %53, 14
  %58 = or i1 %57, %56
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %58)
  %59 = getelementptr inbounds i8, ptr %20, i64 %53
  store i8 %55, ptr %59, align 1
  %60 = sitofp i64 %52 to double
  %61 = fsub double %71, %60
  %62 = fmul double %61, 1.000000e+01
  %63 = add i64 %72, 1
  br label %_llgo_27

_llgo_26:                                         ; preds = %_llgo_27
  %64 = getelementptr inbounds i8, ptr %20, i64 2
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 46, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %20, i64 9
  store i8 101, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %20, i64 10
  store i8 43, ptr %69, align 1
  %70 = icmp slt i64 %28, 0
  br i1 %70, label %_llgo_28, label %_llgo_29

_llgo_27:                                         ; preds = %_llgo_25, %_llgo_12
  %71 = phi double [ %27, %_llgo_12 ], [ %62, %_llgo_25 ]
  %72 = phi i64 [ 0, %_llgo_12 ], [ %63, %_llgo_25 ]
  %73 = icmp slt i64 %72, 7
  br i1 %73, label %_llgo_25, label %_llgo_26

_llgo_28:                                         ; preds = %_llgo_26
  %74 = sub i64 0, %28
  %75 = getelementptr inbounds i8, ptr %20, i64 10
  store i8 45, ptr %75, align 1
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_26
  %76 = phi i64 [ %28, %_llgo_26 ], [ %74, %_llgo_28 ]
  %77 = sdiv i64 %76, 100
  %78 = trunc i64 %77 to i8
  %79 = add i8 %78, 48
  %80 = getelementptr inbounds i8, ptr %20, i64 11
  store i8 %79, ptr %80, align 1
  %81 = sdiv i64 %76, 10
  %82 = trunc i64 %81 to i8
  %83 = urem i8 %82, 10
  %84 = add i8 %83, 48
  %85 = getelementptr inbounds i8, ptr %20, i64 12
  store i8 %84, ptr %85, align 1
  %86 = srem i64 %76, 10
  %87 = trunc i64 %86 to i8
  %88 = add i8 %87, 48
  %89 = getelementptr inbounds i8, ptr %20, i64 13
  store i8 %88, ptr %89, align 1
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 0
  store ptr %20, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 1
  store i64 14, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 2
  store i64 14, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, align 8
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %94)
  ret void
}

define void @main.printhex(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %28, 16
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @11, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 16, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %6, 0
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %6, 1
  %9 = icmp sge i64 %2, %8
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds i8, ptr %7, i64 %2
  %11 = load i8, ptr %10, align 1
  %12 = icmp slt i64 %29, 0
  %13 = icmp sge i64 %29, 100
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i8, ptr %1, i64 %29
  store i8 %11, ptr %15, align 1
  %16 = icmp ult i64 %28, 16
  br i1 %16, label %_llgo_5, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_3
  %17 = sub i64 %29, 1
  %18 = icmp slt i64 %17, 0
  %19 = icmp sge i64 %17, 100
  %20 = or i1 %19, %18
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %20)
  %21 = getelementptr inbounds i8, ptr %1, i64 %17
  store i8 120, ptr %21, align 1
  %22 = sub i64 %17, 1
  %23 = icmp slt i64 %22, 0
  %24 = icmp sge i64 %22, 100
  %25 = or i1 %24, %23
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %25)
  %26 = getelementptr inbounds i8, ptr %1, i64 %22
  store i8 48, ptr %26, align 1
  %27 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %22, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %27)
  ret void

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_0
  %28 = phi i64 [ %0, %_llgo_0 ], [ %31, %_llgo_4 ]
  %29 = phi i64 [ 99, %_llgo_0 ], [ %32, %_llgo_4 ]
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_1
  %31 = udiv i64 %28, 16
  %32 = sub i64 %29, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_1
  %33 = sub i64 100, %29
  %34 = load i64, ptr @main.minhexdigits, align 4
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %_llgo_2, label %_llgo_4
}

define void @main.printint(i64 %0) {
_llgo_0:
  %1 = icmp slt i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @12, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
  %6 = sub i64 0, %0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = phi i64 [ %0, %_llgo_0 ], [ %6, %_llgo_1 ]
  call void @main.printuint(i64 %7)
  ret void
}

define void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_5 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 0
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %0, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp sge i64 %3, %6
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %5, i64 %3
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  %12 = icmp ne i64 %3, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  call void @main.printnl()
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @13, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 1, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %16)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.eface" %11)
  br label %_llgo_1
}

define void @main.printnl() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @14, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %3)
  ret void
}

define void @main.printsp() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @13, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %3)
  ret void
}

define void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/internal/runtime.Slice" @main.bytes(%"github.com/goplus/llgo/internal/runtime.String" %0)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %1)
  ret void
}

define void @main.printuint(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 100)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = urem i64 %11, 10
  %3 = add i64 %2, 48
  %4 = trunc i64 %3 to i8
  %5 = icmp slt i64 %12, 0
  %6 = icmp sge i64 %12, 100
  %7 = or i1 %6, %5
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %7)
  %8 = getelementptr inbounds i8, ptr %1, i64 %12
  store i8 %4, ptr %8, align 1
  %9 = icmp ult i64 %11, 10
  br i1 %9, label %_llgo_2, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3
  %10 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 100, i64 %12, i64 100, i64 100)
  call void @main.gwrite(%"github.com/goplus/llgo/internal/runtime.Slice" %10)
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

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %3, align 1
  store ptr %2, ptr @_llgo_float32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %6 = load ptr, ptr @_llgo_float64, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = or i8 %10, 32
  store i8 %11, ptr %9, align 1
  store ptr %8, ptr @_llgo_float64, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %14, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %15 = load ptr, ptr @_llgo_bool, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %17, i32 0, i32 6
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, 32
  store i8 %20, ptr %18, align 1
  store ptr %17, ptr @_llgo_bool, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %21 = load ptr, ptr @_llgo_int32, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %23, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = or i8 %25, 32
  store i8 %26, ptr %24, align 1
  store ptr %23, ptr @_llgo_int32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %27 = load ptr, ptr @_llgo_int8, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %29, i32 0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = or i8 %31, 32
  store i8 %32, ptr %30, align 1
  store ptr %29, ptr @_llgo_int8, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %33 = load ptr, ptr @_llgo_int16, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %35, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = or i8 %37, 32
  store i8 %38, ptr %36, align 1
  store ptr %35, ptr @_llgo_int16, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %39 = load ptr, ptr @_llgo_int64, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %41, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = or i8 %43, 32
  store i8 %44, ptr %42, align 1
  store ptr %41, ptr @_llgo_int64, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %45 = load ptr, ptr @_llgo_int, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %47, i32 0, i32 6
  %49 = load i8, ptr %48, align 1
  %50 = or i8 %49, 32
  store i8 %50, ptr %48, align 1
  store ptr %47, ptr @_llgo_int, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %51 = load ptr, ptr @_llgo_uint8, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %53, i32 0, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = or i8 %55, 32
  store i8 %56, ptr %54, align 1
  store ptr %53, ptr @_llgo_uint8, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %57 = load ptr, ptr @_llgo_uint16, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %59, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  %62 = or i8 %61, 32
  store i8 %62, ptr %60, align 1
  store ptr %59, ptr @_llgo_uint16, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %63 = load ptr, ptr @_llgo_uint32, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %65, i32 0, i32 6
  %67 = load i8, ptr %66, align 1
  %68 = or i8 %67, 32
  store i8 %68, ptr %66, align 1
  store ptr %65, ptr @_llgo_uint32, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %69 = load ptr, ptr @_llgo_uint64, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %71, i32 0, i32 6
  %73 = load i8, ptr %72, align 1
  %74 = or i8 %73, 32
  store i8 %74, ptr %72, align 1
  store ptr %71, ptr @_llgo_uint64, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %75 = load ptr, ptr @_llgo_uintptr, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %77, i32 0, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = or i8 %79, 32
  store i8 %80, ptr %78, align 1
  store ptr %77, ptr @_llgo_uintptr, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %81 = load ptr, ptr @_llgo_complex128, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 16)
  store ptr %83, ptr @_llgo_complex128, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %84 = load ptr, ptr @_llgo_uint, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %86, i32 0, i32 6
  %88 = load i8, ptr %87, align 1
  %89 = or i8 %88, 32
  store i8 %89, ptr %87, align 1
  store ptr %86, ptr @_llgo_uint, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %90 = load ptr, ptr @_llgo_complex64, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 15)
  store ptr %92, ptr @_llgo_complex64, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)
