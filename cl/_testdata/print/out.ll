; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.stringStruct = type { ptr, i64 }
%main.slice = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@main.minhexdigits = global i64 0, align 8
@0 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
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
@_llgo_uint = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"true", align 1
@5 = private unnamed_addr constant [5 x i8] c"false", align 1
@6 = private unnamed_addr constant [3 x i8] c"NaN", align 1
@7 = private unnamed_addr constant [4 x i8] c"+Inf", align 1
@8 = private unnamed_addr constant [4 x i8] c"-Inf", align 1
@9 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@10 = private unnamed_addr constant [1 x i8] c"-", align 1
@11 = private unnamed_addr constant [1 x i8] c" ", align 1
@12 = private unnamed_addr constant [1 x i8] c"\0A", align 1

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
  %3 = call i32 (ptr, ...) @printf(ptr @0, %"github.com/goplus/llgo/internal/runtime.Slice" %0)
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
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 32
  store i8 %9, ptr %7, align 1
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %6, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr inttoptr (i32 1315859240 to ptr), ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  call void @main.printnl()
  %14 = load ptr, ptr @_llgo_float64, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = or i8 %16, 32
  store i8 %17, ptr %15, align 1
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %14, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr inttoptr (i64 4746175415993761792 to ptr), ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  call void @main.printany(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  call void @main.printnl()
  br i1 true, label %_llgo_3, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_3
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i64 0
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 10, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = load ptr, ptr @_llgo_string, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %27, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 0
  store ptr %28, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 1
  store ptr %29, ptr %32, align 8
  %33 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %33, ptr %23, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i64 1
  %35 = load ptr, ptr @_llgo_bool, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %35, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = or i8 %37, 32
  store i8 %38, ptr %36, align 1
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 0
  store ptr %35, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %42, ptr %34, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 0
  store ptr %22, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 1
  store i64 2, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 2
  store i64 2, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %47)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_3, %_llgo_0
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 48)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i64 0
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 0
  store ptr @3, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 1
  store i64 8, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %50, align 8
  %54 = load ptr, ptr @_llgo_string, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %53, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %56, i32 0, i32 0
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %56, i32 0, i32 1
  store ptr %55, ptr %58, align 8
  %59 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %56, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %59, ptr %49, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i64 1
  %61 = load ptr, ptr @_llgo_bool, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %61, i32 0, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = or i8 %63, 32
  store i8 %64, ptr %62, align 1
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %65, i32 0, i32 0
  store ptr %61, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %65, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %67, align 8
  %68 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %65, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %68, ptr %60, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i64 2
  %70 = load ptr, ptr @_llgo_bool, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %70, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = or i8 %72, 32
  store i8 %73, ptr %71, align 1
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 0
  store ptr %70, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %77, ptr %69, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 0
  store ptr %48, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 1
  store i64 3, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 2
  store i64 3, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %82)
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 256)
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 0
  %85 = load ptr, ptr @_llgo_bool, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %85, i32 0, i32 6
  %87 = load i8, ptr %86, align 1
  %88 = or i8 %87, 32
  store i8 %88, ptr %86, align 1
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 0
  store ptr %85, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %92, ptr %84, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 1
  %94 = load ptr, ptr @_llgo_bool, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %94, i32 0, i32 6
  %96 = load i8, ptr %95, align 1
  %97 = or i8 %96, 32
  store i8 %97, ptr %95, align 1
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, i32 0, i32 0
  store ptr %94, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, i32 0, i32 1
  store ptr null, ptr %100, align 8
  %101 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %101, ptr %93, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 2
  %103 = load ptr, ptr @_llgo_int32, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %103, i32 0, i32 6
  %105 = load i8, ptr %104, align 1
  %106 = or i8 %105, 32
  store i8 %106, ptr %104, align 1
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, i32 0, i32 0
  store ptr %103, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, i32 0, i32 1
  store ptr inttoptr (i64 97 to ptr), ptr %109, align 8
  %110 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %110, ptr %102, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 3
  %112 = load ptr, ptr @_llgo_int32, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %112, i32 0, i32 6
  %114 = load i8, ptr %113, align 1
  %115 = or i8 %114, 32
  store i8 %115, ptr %113, align 1
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %116, i32 0, i32 0
  store ptr %112, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %116, i32 0, i32 1
  store ptr inttoptr (i64 65 to ptr), ptr %118, align 8
  %119 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %116, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %119, ptr %111, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 4
  %121 = load ptr, ptr @_llgo_int32, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %121, i32 0, i32 6
  %123 = load i8, ptr %122, align 1
  %124 = or i8 %123, 32
  store i8 %124, ptr %122, align 1
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, i32 0, i32 0
  store ptr %121, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, i32 0, i32 1
  store ptr inttoptr (i64 20013 to ptr), ptr %127, align 8
  %128 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %125, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %128, ptr %120, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 5
  %130 = load ptr, ptr @_llgo_int8, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %130, i32 0, i32 6
  %132 = load i8, ptr %131, align 1
  %133 = or i8 %132, 32
  store i8 %133, ptr %131, align 1
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, i32 0, i32 0
  store ptr %130, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %136, align 8
  %137 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %137, ptr %129, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 6
  %139 = load ptr, ptr @_llgo_int16, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %139, i32 0, i32 6
  %141 = load i8, ptr %140, align 1
  %142 = or i8 %141, 32
  store i8 %142, ptr %140, align 1
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, i32 0, i32 0
  store ptr %139, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, i32 0, i32 1
  store ptr inttoptr (i64 2 to ptr), ptr %145, align 8
  %146 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %143, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %146, ptr %138, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 7
  %148 = load ptr, ptr @_llgo_int32, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %148, i32 0, i32 6
  %150 = load i8, ptr %149, align 1
  %151 = or i8 %150, 32
  store i8 %151, ptr %149, align 1
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %152, i32 0, i32 0
  store ptr %148, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %152, i32 0, i32 1
  store ptr inttoptr (i64 3 to ptr), ptr %154, align 8
  %155 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %152, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %155, ptr %147, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 8
  %157 = load ptr, ptr @_llgo_int64, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %157, i32 0, i32 6
  %159 = load i8, ptr %158, align 1
  %160 = or i8 %159, 32
  store i8 %160, ptr %158, align 1
  %161 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, i32 0, i32 0
  store ptr %157, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, i32 0, i32 1
  store ptr inttoptr (i64 4 to ptr), ptr %163, align 8
  %164 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %164, ptr %156, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 9
  %166 = load ptr, ptr @_llgo_int, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %166, i32 0, i32 6
  %168 = load i8, ptr %167, align 1
  %169 = or i8 %168, 32
  store i8 %169, ptr %167, align 1
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %170, i32 0, i32 0
  store ptr %166, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %170, i32 0, i32 1
  store ptr inttoptr (i64 5 to ptr), ptr %172, align 8
  %173 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %170, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %173, ptr %165, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 10
  %175 = load ptr, ptr @_llgo_uint8, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %175, i32 0, i32 6
  %177 = load i8, ptr %176, align 1
  %178 = or i8 %177, 32
  store i8 %178, ptr %176, align 1
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %179, i32 0, i32 0
  store ptr %175, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %179, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %181, align 8
  %182 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %179, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %182, ptr %174, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 11
  %184 = load ptr, ptr @_llgo_uint16, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %184, i32 0, i32 6
  %186 = load i8, ptr %185, align 1
  %187 = or i8 %186, 32
  store i8 %187, ptr %185, align 1
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %188, i32 0, i32 0
  store ptr %184, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %188, i32 0, i32 1
  store ptr inttoptr (i64 2 to ptr), ptr %190, align 8
  %191 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %188, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %191, ptr %183, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 12
  %193 = load ptr, ptr @_llgo_uint32, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %193, i32 0, i32 6
  %195 = load i8, ptr %194, align 1
  %196 = or i8 %195, 32
  store i8 %196, ptr %194, align 1
  %197 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %197, i32 0, i32 0
  store ptr %193, ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %197, i32 0, i32 1
  store ptr inttoptr (i64 3 to ptr), ptr %199, align 8
  %200 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %197, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %200, ptr %192, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 13
  %202 = load ptr, ptr @_llgo_uint64, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %202, i32 0, i32 6
  %204 = load i8, ptr %203, align 1
  %205 = or i8 %204, 32
  store i8 %205, ptr %203, align 1
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %206, i32 0, i32 0
  store ptr %202, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %206, i32 0, i32 1
  store ptr inttoptr (i64 4 to ptr), ptr %208, align 8
  %209 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %206, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %209, ptr %201, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 14
  %211 = load ptr, ptr @_llgo_uintptr, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %211, i32 0, i32 6
  %213 = load i8, ptr %212, align 1
  %214 = or i8 %213, 32
  store i8 %214, ptr %212, align 1
  %215 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %215, i32 0, i32 0
  store ptr %211, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %215, i32 0, i32 1
  store ptr inttoptr (i64 5 to ptr), ptr %217, align 8
  %218 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %215, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %218, ptr %210, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i64 15
  %220 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 0
  store ptr @1, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 1
  store i64 4, ptr %222, align 4
  %223 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %220, align 8
  %224 = load ptr, ptr @_llgo_string, align 8
  %225 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %223, ptr %225, align 8
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %226, i32 0, i32 0
  store ptr %224, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %226, i32 0, i32 1
  store ptr %225, ptr %228, align 8
  %229 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %226, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %229, ptr %219, align 8
  %230 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %230, i32 0, i32 0
  store ptr %83, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %230, i32 0, i32 1
  store i64 16, ptr %232, align 4
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %230, i32 0, i32 2
  store i64 16, ptr %233, align 4
  %234 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %230, align 8
  call void @main.println(%"github.com/goplus/llgo/internal/runtime.Slice" %234)
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
  br i1 %3, label %_llgo_31, label %_llgo_32

_llgo_1:                                          ; preds = %_llgo_30, %_llgo_75, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_33
  call void @main.printbool(i1 %65)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_33
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_34, label %_llgo_35

_llgo_4:                                          ; preds = %_llgo_36
  call void @main.printint(i64 %78)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_36
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %8 = load ptr, ptr @_llgo_int8, align 8
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %_llgo_37, label %_llgo_38

_llgo_6:                                          ; preds = %_llgo_39
  %10 = sext i8 %92 to i64
  call void @main.printint(i64 %10)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_39
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %12 = load ptr, ptr @_llgo_int16, align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_40, label %_llgo_41

_llgo_8:                                          ; preds = %_llgo_42
  %14 = sext i16 %106 to i64
  call void @main.printint(i64 %14)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_42
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %16 = load ptr, ptr @_llgo_int32, align 8
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %_llgo_43, label %_llgo_44

_llgo_10:                                         ; preds = %_llgo_45
  %18 = sext i32 %120 to i64
  call void @main.printint(i64 %18)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_45
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %20 = load ptr, ptr @_llgo_int64, align 8
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %_llgo_46, label %_llgo_47

_llgo_12:                                         ; preds = %_llgo_48
  call void @main.printint(i64 %133)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_48
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %23 = load ptr, ptr @_llgo_uint, align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_llgo_49, label %_llgo_50

_llgo_14:                                         ; preds = %_llgo_51
  call void @main.printuint(i64 %146)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_51
  %25 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %26 = load ptr, ptr @_llgo_uint8, align 8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %_llgo_52, label %_llgo_53

_llgo_16:                                         ; preds = %_llgo_54
  %28 = zext i8 %160 to i64
  call void @main.printuint(i64 %28)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_54
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %30 = load ptr, ptr @_llgo_uint16, align 8
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %_llgo_55, label %_llgo_56

_llgo_18:                                         ; preds = %_llgo_57
  %32 = zext i16 %174 to i64
  call void @main.printuint(i64 %32)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_57
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %34 = load ptr, ptr @_llgo_uint32, align 8
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %_llgo_58, label %_llgo_59

_llgo_20:                                         ; preds = %_llgo_60
  %36 = zext i32 %188 to i64
  call void @main.printuint(i64 %36)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_60
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %38 = load ptr, ptr @_llgo_uint64, align 8
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %_llgo_61, label %_llgo_62

_llgo_22:                                         ; preds = %_llgo_63
  call void @main.printuint(i64 %201)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_63
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %41 = load ptr, ptr @_llgo_uintptr, align 8
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %_llgo_64, label %_llgo_65

_llgo_24:                                         ; preds = %_llgo_66
  call void @main.printuint(i64 %214)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_66
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %44 = load ptr, ptr @_llgo_float32, align 8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %_llgo_67, label %_llgo_68

_llgo_26:                                         ; preds = %_llgo_69
  %46 = fpext float %229 to double
  call void @main.printfloat(double %46)
  br label %_llgo_1

_llgo_27:                                         ; preds = %_llgo_69
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %48 = load ptr, ptr @_llgo_float64, align 8
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %_llgo_70, label %_llgo_71

_llgo_28:                                         ; preds = %_llgo_72
  call void @main.printfloat(double %243)
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_72
  %50 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 0
  %51 = load ptr, ptr @_llgo_string, align 8
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %_llgo_73, label %_llgo_74

_llgo_30:                                         ; preds = %_llgo_75
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %256)
  br label %_llgo_1

_llgo_31:                                         ; preds = %_llgo_0
  %53 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %54 = ptrtoint ptr %53 to i64
  %55 = trunc i64 %54 to i1
  %56 = alloca { i1, i1 }, align 8
  %57 = getelementptr inbounds { i1, i1 }, ptr %56, i32 0, i32 0
  store i1 %55, ptr %57, align 1
  %58 = getelementptr inbounds { i1, i1 }, ptr %56, i32 0, i32 1
  store i1 true, ptr %58, align 1
  %59 = load { i1, i1 }, ptr %56, align 1
  br label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_0
  %60 = alloca { i1, i1 }, align 8
  %61 = getelementptr inbounds { i1, i1 }, ptr %60, i32 0, i32 0
  store i1 false, ptr %61, align 1
  %62 = getelementptr inbounds { i1, i1 }, ptr %60, i32 0, i32 1
  store i1 false, ptr %62, align 1
  %63 = load { i1, i1 }, ptr %60, align 1
  br label %_llgo_33

_llgo_33:                                         ; preds = %_llgo_32, %_llgo_31
  %64 = phi { i1, i1 } [ %59, %_llgo_31 ], [ %63, %_llgo_32 ]
  %65 = extractvalue { i1, i1 } %64, 0
  %66 = extractvalue { i1, i1 } %64, 1
  br i1 %66, label %_llgo_2, label %_llgo_3

_llgo_34:                                         ; preds = %_llgo_3
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %68 = ptrtoint ptr %67 to i64
  %69 = alloca { i64, i1 }, align 8
  %70 = getelementptr inbounds { i64, i1 }, ptr %69, i32 0, i32 0
  store i64 %68, ptr %70, align 4
  %71 = getelementptr inbounds { i64, i1 }, ptr %69, i32 0, i32 1
  store i1 true, ptr %71, align 1
  %72 = load { i64, i1 }, ptr %69, align 4
  br label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_3
  %73 = alloca { i64, i1 }, align 8
  %74 = getelementptr inbounds { i64, i1 }, ptr %73, i32 0, i32 0
  store i64 0, ptr %74, align 4
  %75 = getelementptr inbounds { i64, i1 }, ptr %73, i32 0, i32 1
  store i1 false, ptr %75, align 1
  %76 = load { i64, i1 }, ptr %73, align 4
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %77 = phi { i64, i1 } [ %72, %_llgo_34 ], [ %76, %_llgo_35 ]
  %78 = extractvalue { i64, i1 } %77, 0
  %79 = extractvalue { i64, i1 } %77, 1
  br i1 %79, label %_llgo_4, label %_llgo_5

_llgo_37:                                         ; preds = %_llgo_5
  %80 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %81 = ptrtoint ptr %80 to i64
  %82 = trunc i64 %81 to i8
  %83 = alloca { i8, i1 }, align 8
  %84 = getelementptr inbounds { i8, i1 }, ptr %83, i32 0, i32 0
  store i8 %82, ptr %84, align 1
  %85 = getelementptr inbounds { i8, i1 }, ptr %83, i32 0, i32 1
  store i1 true, ptr %85, align 1
  %86 = load { i8, i1 }, ptr %83, align 1
  br label %_llgo_39

_llgo_38:                                         ; preds = %_llgo_5
  %87 = alloca { i8, i1 }, align 8
  %88 = getelementptr inbounds { i8, i1 }, ptr %87, i32 0, i32 0
  store i8 0, ptr %88, align 1
  %89 = getelementptr inbounds { i8, i1 }, ptr %87, i32 0, i32 1
  store i1 false, ptr %89, align 1
  %90 = load { i8, i1 }, ptr %87, align 1
  br label %_llgo_39

_llgo_39:                                         ; preds = %_llgo_38, %_llgo_37
  %91 = phi { i8, i1 } [ %86, %_llgo_37 ], [ %90, %_llgo_38 ]
  %92 = extractvalue { i8, i1 } %91, 0
  %93 = extractvalue { i8, i1 } %91, 1
  br i1 %93, label %_llgo_6, label %_llgo_7

_llgo_40:                                         ; preds = %_llgo_7
  %94 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %95 = ptrtoint ptr %94 to i64
  %96 = trunc i64 %95 to i16
  %97 = alloca { i16, i1 }, align 8
  %98 = getelementptr inbounds { i16, i1 }, ptr %97, i32 0, i32 0
  store i16 %96, ptr %98, align 2
  %99 = getelementptr inbounds { i16, i1 }, ptr %97, i32 0, i32 1
  store i1 true, ptr %99, align 1
  %100 = load { i16, i1 }, ptr %97, align 2
  br label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_7
  %101 = alloca { i16, i1 }, align 8
  %102 = getelementptr inbounds { i16, i1 }, ptr %101, i32 0, i32 0
  store i16 0, ptr %102, align 2
  %103 = getelementptr inbounds { i16, i1 }, ptr %101, i32 0, i32 1
  store i1 false, ptr %103, align 1
  %104 = load { i16, i1 }, ptr %101, align 2
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %105 = phi { i16, i1 } [ %100, %_llgo_40 ], [ %104, %_llgo_41 ]
  %106 = extractvalue { i16, i1 } %105, 0
  %107 = extractvalue { i16, i1 } %105, 1
  br i1 %107, label %_llgo_8, label %_llgo_9

_llgo_43:                                         ; preds = %_llgo_9
  %108 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %109 = ptrtoint ptr %108 to i64
  %110 = trunc i64 %109 to i32
  %111 = alloca { i32, i1 }, align 8
  %112 = getelementptr inbounds { i32, i1 }, ptr %111, i32 0, i32 0
  store i32 %110, ptr %112, align 4
  %113 = getelementptr inbounds { i32, i1 }, ptr %111, i32 0, i32 1
  store i1 true, ptr %113, align 1
  %114 = load { i32, i1 }, ptr %111, align 4
  br label %_llgo_45

_llgo_44:                                         ; preds = %_llgo_9
  %115 = alloca { i32, i1 }, align 8
  %116 = getelementptr inbounds { i32, i1 }, ptr %115, i32 0, i32 0
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds { i32, i1 }, ptr %115, i32 0, i32 1
  store i1 false, ptr %117, align 1
  %118 = load { i32, i1 }, ptr %115, align 4
  br label %_llgo_45

_llgo_45:                                         ; preds = %_llgo_44, %_llgo_43
  %119 = phi { i32, i1 } [ %114, %_llgo_43 ], [ %118, %_llgo_44 ]
  %120 = extractvalue { i32, i1 } %119, 0
  %121 = extractvalue { i32, i1 } %119, 1
  br i1 %121, label %_llgo_10, label %_llgo_11

_llgo_46:                                         ; preds = %_llgo_11
  %122 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %123 = ptrtoint ptr %122 to i64
  %124 = alloca { i64, i1 }, align 8
  %125 = getelementptr inbounds { i64, i1 }, ptr %124, i32 0, i32 0
  store i64 %123, ptr %125, align 4
  %126 = getelementptr inbounds { i64, i1 }, ptr %124, i32 0, i32 1
  store i1 true, ptr %126, align 1
  %127 = load { i64, i1 }, ptr %124, align 4
  br label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_11
  %128 = alloca { i64, i1 }, align 8
  %129 = getelementptr inbounds { i64, i1 }, ptr %128, i32 0, i32 0
  store i64 0, ptr %129, align 4
  %130 = getelementptr inbounds { i64, i1 }, ptr %128, i32 0, i32 1
  store i1 false, ptr %130, align 1
  %131 = load { i64, i1 }, ptr %128, align 4
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %132 = phi { i64, i1 } [ %127, %_llgo_46 ], [ %131, %_llgo_47 ]
  %133 = extractvalue { i64, i1 } %132, 0
  %134 = extractvalue { i64, i1 } %132, 1
  br i1 %134, label %_llgo_12, label %_llgo_13

_llgo_49:                                         ; preds = %_llgo_13
  %135 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %136 = ptrtoint ptr %135 to i64
  %137 = alloca { i64, i1 }, align 8
  %138 = getelementptr inbounds { i64, i1 }, ptr %137, i32 0, i32 0
  store i64 %136, ptr %138, align 4
  %139 = getelementptr inbounds { i64, i1 }, ptr %137, i32 0, i32 1
  store i1 true, ptr %139, align 1
  %140 = load { i64, i1 }, ptr %137, align 4
  br label %_llgo_51

_llgo_50:                                         ; preds = %_llgo_13
  %141 = alloca { i64, i1 }, align 8
  %142 = getelementptr inbounds { i64, i1 }, ptr %141, i32 0, i32 0
  store i64 0, ptr %142, align 4
  %143 = getelementptr inbounds { i64, i1 }, ptr %141, i32 0, i32 1
  store i1 false, ptr %143, align 1
  %144 = load { i64, i1 }, ptr %141, align 4
  br label %_llgo_51

_llgo_51:                                         ; preds = %_llgo_50, %_llgo_49
  %145 = phi { i64, i1 } [ %140, %_llgo_49 ], [ %144, %_llgo_50 ]
  %146 = extractvalue { i64, i1 } %145, 0
  %147 = extractvalue { i64, i1 } %145, 1
  br i1 %147, label %_llgo_14, label %_llgo_15

_llgo_52:                                         ; preds = %_llgo_15
  %148 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %149 = ptrtoint ptr %148 to i64
  %150 = trunc i64 %149 to i8
  %151 = alloca { i8, i1 }, align 8
  %152 = getelementptr inbounds { i8, i1 }, ptr %151, i32 0, i32 0
  store i8 %150, ptr %152, align 1
  %153 = getelementptr inbounds { i8, i1 }, ptr %151, i32 0, i32 1
  store i1 true, ptr %153, align 1
  %154 = load { i8, i1 }, ptr %151, align 1
  br label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_15
  %155 = alloca { i8, i1 }, align 8
  %156 = getelementptr inbounds { i8, i1 }, ptr %155, i32 0, i32 0
  store i8 0, ptr %156, align 1
  %157 = getelementptr inbounds { i8, i1 }, ptr %155, i32 0, i32 1
  store i1 false, ptr %157, align 1
  %158 = load { i8, i1 }, ptr %155, align 1
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %159 = phi { i8, i1 } [ %154, %_llgo_52 ], [ %158, %_llgo_53 ]
  %160 = extractvalue { i8, i1 } %159, 0
  %161 = extractvalue { i8, i1 } %159, 1
  br i1 %161, label %_llgo_16, label %_llgo_17

_llgo_55:                                         ; preds = %_llgo_17
  %162 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %163 = ptrtoint ptr %162 to i64
  %164 = trunc i64 %163 to i16
  %165 = alloca { i16, i1 }, align 8
  %166 = getelementptr inbounds { i16, i1 }, ptr %165, i32 0, i32 0
  store i16 %164, ptr %166, align 2
  %167 = getelementptr inbounds { i16, i1 }, ptr %165, i32 0, i32 1
  store i1 true, ptr %167, align 1
  %168 = load { i16, i1 }, ptr %165, align 2
  br label %_llgo_57

_llgo_56:                                         ; preds = %_llgo_17
  %169 = alloca { i16, i1 }, align 8
  %170 = getelementptr inbounds { i16, i1 }, ptr %169, i32 0, i32 0
  store i16 0, ptr %170, align 2
  %171 = getelementptr inbounds { i16, i1 }, ptr %169, i32 0, i32 1
  store i1 false, ptr %171, align 1
  %172 = load { i16, i1 }, ptr %169, align 2
  br label %_llgo_57

_llgo_57:                                         ; preds = %_llgo_56, %_llgo_55
  %173 = phi { i16, i1 } [ %168, %_llgo_55 ], [ %172, %_llgo_56 ]
  %174 = extractvalue { i16, i1 } %173, 0
  %175 = extractvalue { i16, i1 } %173, 1
  br i1 %175, label %_llgo_18, label %_llgo_19

_llgo_58:                                         ; preds = %_llgo_19
  %176 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %177 = ptrtoint ptr %176 to i64
  %178 = trunc i64 %177 to i32
  %179 = alloca { i32, i1 }, align 8
  %180 = getelementptr inbounds { i32, i1 }, ptr %179, i32 0, i32 0
  store i32 %178, ptr %180, align 4
  %181 = getelementptr inbounds { i32, i1 }, ptr %179, i32 0, i32 1
  store i1 true, ptr %181, align 1
  %182 = load { i32, i1 }, ptr %179, align 4
  br label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_19
  %183 = alloca { i32, i1 }, align 8
  %184 = getelementptr inbounds { i32, i1 }, ptr %183, i32 0, i32 0
  store i32 0, ptr %184, align 4
  %185 = getelementptr inbounds { i32, i1 }, ptr %183, i32 0, i32 1
  store i1 false, ptr %185, align 1
  %186 = load { i32, i1 }, ptr %183, align 4
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %187 = phi { i32, i1 } [ %182, %_llgo_58 ], [ %186, %_llgo_59 ]
  %188 = extractvalue { i32, i1 } %187, 0
  %189 = extractvalue { i32, i1 } %187, 1
  br i1 %189, label %_llgo_20, label %_llgo_21

_llgo_61:                                         ; preds = %_llgo_21
  %190 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %191 = ptrtoint ptr %190 to i64
  %192 = alloca { i64, i1 }, align 8
  %193 = getelementptr inbounds { i64, i1 }, ptr %192, i32 0, i32 0
  store i64 %191, ptr %193, align 4
  %194 = getelementptr inbounds { i64, i1 }, ptr %192, i32 0, i32 1
  store i1 true, ptr %194, align 1
  %195 = load { i64, i1 }, ptr %192, align 4
  br label %_llgo_63

_llgo_62:                                         ; preds = %_llgo_21
  %196 = alloca { i64, i1 }, align 8
  %197 = getelementptr inbounds { i64, i1 }, ptr %196, i32 0, i32 0
  store i64 0, ptr %197, align 4
  %198 = getelementptr inbounds { i64, i1 }, ptr %196, i32 0, i32 1
  store i1 false, ptr %198, align 1
  %199 = load { i64, i1 }, ptr %196, align 4
  br label %_llgo_63

_llgo_63:                                         ; preds = %_llgo_62, %_llgo_61
  %200 = phi { i64, i1 } [ %195, %_llgo_61 ], [ %199, %_llgo_62 ]
  %201 = extractvalue { i64, i1 } %200, 0
  %202 = extractvalue { i64, i1 } %200, 1
  br i1 %202, label %_llgo_22, label %_llgo_23

_llgo_64:                                         ; preds = %_llgo_23
  %203 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %204 = ptrtoint ptr %203 to i64
  %205 = alloca { i64, i1 }, align 8
  %206 = getelementptr inbounds { i64, i1 }, ptr %205, i32 0, i32 0
  store i64 %204, ptr %206, align 4
  %207 = getelementptr inbounds { i64, i1 }, ptr %205, i32 0, i32 1
  store i1 true, ptr %207, align 1
  %208 = load { i64, i1 }, ptr %205, align 4
  br label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_23
  %209 = alloca { i64, i1 }, align 8
  %210 = getelementptr inbounds { i64, i1 }, ptr %209, i32 0, i32 0
  store i64 0, ptr %210, align 4
  %211 = getelementptr inbounds { i64, i1 }, ptr %209, i32 0, i32 1
  store i1 false, ptr %211, align 1
  %212 = load { i64, i1 }, ptr %209, align 4
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %213 = phi { i64, i1 } [ %208, %_llgo_64 ], [ %212, %_llgo_65 ]
  %214 = extractvalue { i64, i1 } %213, 0
  %215 = extractvalue { i64, i1 } %213, 1
  br i1 %215, label %_llgo_24, label %_llgo_25

_llgo_67:                                         ; preds = %_llgo_25
  %216 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %217 = ptrtoint ptr %216 to i64
  %218 = trunc i64 %217 to i32
  %219 = bitcast i32 %218 to float
  %220 = alloca { float, i1 }, align 8
  %221 = getelementptr inbounds { float, i1 }, ptr %220, i32 0, i32 0
  store float %219, ptr %221, align 4
  %222 = getelementptr inbounds { float, i1 }, ptr %220, i32 0, i32 1
  store i1 true, ptr %222, align 1
  %223 = load { float, i1 }, ptr %220, align 4
  br label %_llgo_69

_llgo_68:                                         ; preds = %_llgo_25
  %224 = alloca { float, i1 }, align 8
  %225 = getelementptr inbounds { float, i1 }, ptr %224, i32 0, i32 0
  store double 0.000000e+00, ptr %225, align 8
  %226 = getelementptr inbounds { float, i1 }, ptr %224, i32 0, i32 1
  store i1 false, ptr %226, align 1
  %227 = load { float, i1 }, ptr %224, align 4
  br label %_llgo_69

_llgo_69:                                         ; preds = %_llgo_68, %_llgo_67
  %228 = phi { float, i1 } [ %223, %_llgo_67 ], [ %227, %_llgo_68 ]
  %229 = extractvalue { float, i1 } %228, 0
  %230 = extractvalue { float, i1 } %228, 1
  br i1 %230, label %_llgo_26, label %_llgo_27

_llgo_70:                                         ; preds = %_llgo_27
  %231 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %232 = ptrtoint ptr %231 to i64
  %233 = bitcast i64 %232 to double
  %234 = alloca { double, i1 }, align 8
  %235 = getelementptr inbounds { double, i1 }, ptr %234, i32 0, i32 0
  store double %233, ptr %235, align 8
  %236 = getelementptr inbounds { double, i1 }, ptr %234, i32 0, i32 1
  store i1 true, ptr %236, align 1
  %237 = load { double, i1 }, ptr %234, align 8
  br label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_27
  %238 = alloca { double, i1 }, align 8
  %239 = getelementptr inbounds { double, i1 }, ptr %238, i32 0, i32 0
  store double 0.000000e+00, ptr %239, align 8
  %240 = getelementptr inbounds { double, i1 }, ptr %238, i32 0, i32 1
  store i1 false, ptr %240, align 1
  %241 = load { double, i1 }, ptr %238, align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %242 = phi { double, i1 } [ %237, %_llgo_70 ], [ %241, %_llgo_71 ]
  %243 = extractvalue { double, i1 } %242, 0
  %244 = extractvalue { double, i1 } %242, 1
  br i1 %244, label %_llgo_28, label %_llgo_29

_llgo_73:                                         ; preds = %_llgo_29
  %245 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %0, 1
  %246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %245, align 8
  %247 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %248 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %247, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %246, ptr %248, align 8
  %249 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %247, i32 0, i32 1
  store i1 true, ptr %249, align 1
  %250 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %247, align 8
  br label %_llgo_75

_llgo_74:                                         ; preds = %_llgo_29
  %251 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %252 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %251, i32 0, i32 0
  store { ptr, i64 } zeroinitializer, ptr %252, align 8
  %253 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %251, i32 0, i32 1
  store i1 false, ptr %253, align 1
  %254 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %251, align 8
  br label %_llgo_75

_llgo_75:                                         ; preds = %_llgo_74, %_llgo_73
  %255 = phi { %"github.com/goplus/llgo/internal/runtime.String", i1 } [ %250, %_llgo_73 ], [ %254, %_llgo_74 ]
  %256 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %255, 0
  %257 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %255, 1
  br i1 %257, label %_llgo_30, label %_llgo_1
}

define void @main.printbool(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @4, ptr %2, align 8
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
  store ptr @5, ptr %6, align 8
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
  store ptr @6, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 3, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @main.printstring(%"github.com/goplus/llgo/internal/runtime.String" %5)
  ret void

_llgo_2:                                          ; preds = %_llgo_7
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @7, ptr %7, align 8
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
  store ptr @8, ptr %13, align 8
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
  store ptr @9, ptr %4, align 8
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
  store ptr @10, ptr %3, align 8
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
  store ptr @11, ptr %14, align 8
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
  store ptr @12, ptr %1, align 8
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
  store ptr @11, ptr %1, align 8
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
  %81 = load ptr, ptr @_llgo_uint, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %83, i32 0, i32 6
  %85 = load i8, ptr %84, align 1
  %86 = or i8 %85, 32
  store i8 %86, ptr %84, align 1
  store ptr %83, ptr @_llgo_uint, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)
