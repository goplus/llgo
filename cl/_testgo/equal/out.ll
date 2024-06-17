; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.T = type { i64, i64, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.eface" }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%main.N = type {}
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [2 x i8] c"ok", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk" = linkonce global ptr null, align 8
@_llgo_any = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"X", align 1
@5 = private unnamed_addr constant [1 x i8] c"Y", align 1
@6 = private unnamed_addr constant [1 x i8] c"Z", align 1
@7 = private unnamed_addr constant [1 x i8] c"V", align 1
@8 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@_llgo_main.N = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.assert(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 6, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %4, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %6, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  call void @"main.init#1"()
  call void @"main.init#2"()
  call void @"main.init#3"()
  call void @"main.init#4"()
  call void @"main.init#5"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"main.init#1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  store ptr @"main.init#1$2", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  %6 = load { ptr, ptr }, ptr %3, align 8
  call void @main.assert(i1 true)
  call void @main.assert(i1 true)
  call void @main.assert(i1 true)
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = icmp ne ptr %7, null
  call void @main.assert(i1 %8)
  call void @main.assert(i1 true)
  ret void
}

define i64 @"main.init#1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"main.init#1$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"main.init#2"() {
_llgo_0:
  call void @main.assert(i1 true)
  %0 = alloca [3 x i64], align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 24)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 1, ptr %2, align 4
  store i64 2, ptr %3, align 4
  store i64 3, ptr %4, align 4
  %5 = alloca [3 x i64], align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %5, i64 24)
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = getelementptr inbounds i64, ptr %6, i64 1
  %9 = getelementptr inbounds i64, ptr %6, i64 2
  store i64 1, ptr %7, align 4
  store i64 2, ptr %8, align 4
  store i64 3, ptr %9, align 4
  %10 = load [3 x i64], ptr %1, align 4
  %11 = load [3 x i64], ptr %6, align 4
  %12 = extractvalue [3 x i64] %10, 0
  %13 = extractvalue [3 x i64] %11, 0
  %14 = icmp eq i64 %12, %13
  %15 = and i1 true, %14
  %16 = extractvalue [3 x i64] %10, 1
  %17 = extractvalue [3 x i64] %11, 1
  %18 = icmp eq i64 %16, %17
  %19 = and i1 %15, %18
  %20 = extractvalue [3 x i64] %10, 2
  %21 = extractvalue [3 x i64] %11, 2
  %22 = icmp eq i64 %20, %21
  %23 = and i1 %19, %22
  call void @main.assert(i1 %23)
  %24 = getelementptr inbounds i64, ptr %6, i64 1
  store i64 1, ptr %24, align 4
  %25 = load [3 x i64], ptr %1, align 4
  %26 = load [3 x i64], ptr %6, align 4
  %27 = extractvalue [3 x i64] %25, 0
  %28 = extractvalue [3 x i64] %26, 0
  %29 = icmp eq i64 %27, %28
  %30 = and i1 true, %29
  %31 = extractvalue [3 x i64] %25, 1
  %32 = extractvalue [3 x i64] %26, 1
  %33 = icmp eq i64 %31, %32
  %34 = and i1 %30, %33
  %35 = extractvalue [3 x i64] %25, 2
  %36 = extractvalue [3 x i64] %26, 2
  %37 = icmp eq i64 %35, %36
  %38 = and i1 %34, %37
  %39 = xor i1 %38, true
  call void @main.assert(i1 %39)
  ret void
}

define void @"main.init#3"() {
_llgo_0:
  %0 = alloca %main.T, align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 48)
  %2 = getelementptr inbounds %main.T, ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %main.T, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %main.T, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %main.T, ptr %1, i32 0, i32 3
  store i64 10, ptr %2, align 4
  store i64 20, ptr %3, align 4
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @1, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 5, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %9, ptr %4, align 8
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %10, i32 0, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = or i8 %12, 32
  store i8 %13, ptr %11, align 1
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 0
  store ptr %10, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %16, align 8
  %17 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %17, ptr %5, align 8
  %18 = alloca %main.T, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %18, i64 48)
  %20 = getelementptr inbounds %main.T, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %main.T, ptr %19, i32 0, i32 1
  %22 = getelementptr inbounds %main.T, ptr %19, i32 0, i32 2
  %23 = getelementptr inbounds %main.T, ptr %19, i32 0, i32 3
  store i64 10, ptr %20, align 4
  store i64 20, ptr %21, align 4
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @1, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 5, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %27, ptr %22, align 8
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %28, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = or i8 %30, 32
  store i8 %31, ptr %29, align 1
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 0
  store ptr %28, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %35, ptr %23, align 8
  %36 = alloca %main.T, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %36, i64 48)
  %38 = getelementptr inbounds %main.T, ptr %37, i32 0, i32 0
  %39 = getelementptr inbounds %main.T, ptr %37, i32 0, i32 1
  %40 = getelementptr inbounds %main.T, ptr %37, i32 0, i32 2
  %41 = getelementptr inbounds %main.T, ptr %37, i32 0, i32 3
  store i64 10, ptr %38, align 4
  store i64 20, ptr %39, align 4
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr @1, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 5, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %45, ptr %40, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 0
  store ptr @2, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 1
  store i64 2, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %46, align 8
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %49, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 0
  store ptr %50, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 1
  store ptr %51, ptr %54, align 8
  %55 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %55, ptr %41, align 8
  call void @main.assert(i1 true)
  %56 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer)
  %57 = and i1 true, %56
  %58 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  %59 = and i1 %57, %58
  call void @main.assert(i1 %59)
  %60 = load %main.T, ptr %1, align 8
  %61 = load %main.T, ptr %19, align 8
  %62 = extractvalue %main.T %60, 0
  %63 = extractvalue %main.T %61, 0
  %64 = icmp eq i64 %62, %63
  %65 = and i1 true, %64
  %66 = extractvalue %main.T %60, 1
  %67 = extractvalue %main.T %61, 1
  %68 = icmp eq i64 %66, %67
  %69 = and i1 %65, %68
  %70 = extractvalue %main.T %60, 2
  %71 = extractvalue %main.T %61, 2
  %72 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %70, %"github.com/goplus/llgo/internal/runtime.String" %71)
  %73 = and i1 %69, %72
  %74 = extractvalue %main.T %60, 3
  %75 = extractvalue %main.T %61, 3
  %76 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %74, %"github.com/goplus/llgo/internal/runtime.eface" %75)
  %77 = and i1 %73, %76
  call void @main.assert(i1 %77)
  %78 = load %main.T, ptr %1, align 8
  %79 = load %main.T, ptr %37, align 8
  %80 = extractvalue %main.T %78, 0
  %81 = extractvalue %main.T %79, 0
  %82 = icmp eq i64 %80, %81
  %83 = and i1 true, %82
  %84 = extractvalue %main.T %78, 1
  %85 = extractvalue %main.T %79, 1
  %86 = icmp eq i64 %84, %85
  %87 = and i1 %83, %86
  %88 = extractvalue %main.T %78, 2
  %89 = extractvalue %main.T %79, 2
  %90 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %88, %"github.com/goplus/llgo/internal/runtime.String" %89)
  %91 = and i1 %87, %90
  %92 = extractvalue %main.T %78, 3
  %93 = extractvalue %main.T %79, 3
  %94 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %92, %"github.com/goplus/llgo/internal/runtime.eface" %93)
  %95 = and i1 %91, %94
  %96 = xor i1 %95, true
  call void @main.assert(i1 %96)
  %97 = load %main.T, ptr %19, align 8
  %98 = load %main.T, ptr %37, align 8
  %99 = extractvalue %main.T %97, 0
  %100 = extractvalue %main.T %98, 0
  %101 = icmp eq i64 %99, %100
  %102 = and i1 true, %101
  %103 = extractvalue %main.T %97, 1
  %104 = extractvalue %main.T %98, 1
  %105 = icmp eq i64 %103, %104
  %106 = and i1 %102, %105
  %107 = extractvalue %main.T %97, 2
  %108 = extractvalue %main.T %98, 2
  %109 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %107, %"github.com/goplus/llgo/internal/runtime.String" %108)
  %110 = and i1 %106, %109
  %111 = extractvalue %main.T %97, 3
  %112 = extractvalue %main.T %98, 3
  %113 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %111, %"github.com/goplus/llgo/internal/runtime.eface" %112)
  %114 = and i1 %110, %113
  %115 = xor i1 %114, true
  call void @main.assert(i1 %115)
  ret void
}

define void @"main.init#4"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, i32 0, i32 0
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, i32 0, i32 1
  store i64 3, ptr %6, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, i32 0, i32 2
  store i64 3, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %4, align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %10 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %9, i64 8, i64 2, i64 0, i64 2, i64 2)
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %12 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %11, i64 8, i64 2, i64 0, i64 0, i64 2)
  call void @main.assert(i1 true)
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %8, 0
  %14 = icmp ne ptr %13, null
  call void @main.assert(i1 %14)
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %10, 0
  %16 = icmp ne ptr %15, null
  call void @main.assert(i1 %16)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %12, 0
  %18 = icmp ne ptr %17, null
  call void @main.assert(i1 %18)
  call void @main.assert(i1 true)
  ret void
}

define void @"main.init#5"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 6
  %2 = load i8, ptr %1, align 1
  %3 = or i8 %2, 32
  store i8 %3, ptr %1, align 1
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 0
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, align 8
  %8 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %9, align 1
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  %14 = alloca %main.T, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %14, i64 48)
  %16 = getelementptr inbounds %main.T, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %main.T, ptr %15, i32 0, i32 1
  %18 = getelementptr inbounds %main.T, ptr %15, i32 0, i32 2
  %19 = getelementptr inbounds %main.T, ptr %15, i32 0, i32 3
  store i64 10, ptr %16, align 4
  store i64 20, ptr %17, align 4
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @1, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 5, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %18, align 8
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %24, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = or i8 %26, 32
  store i8 %27, ptr %25, align 1
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %24, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %31, ptr %19, align 8
  %32 = load %main.T, ptr %15, align 8
  %33 = load ptr, ptr @_llgo_main.T, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T %32, ptr %34, align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, i32 0, i32 1
  store ptr %34, ptr %37, align 8
  %38 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, align 8
  %39 = alloca %main.T, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %39, i64 48)
  %41 = getelementptr inbounds %main.T, ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds %main.T, ptr %40, i32 0, i32 1
  %43 = getelementptr inbounds %main.T, ptr %40, i32 0, i32 2
  %44 = getelementptr inbounds %main.T, ptr %40, i32 0, i32 3
  store i64 10, ptr %41, align 4
  store i64 20, ptr %42, align 4
  %45 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 0
  store ptr @1, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %45, i32 0, i32 1
  store i64 5, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %45, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %48, ptr %43, align 8
  %49 = load ptr, ptr @_llgo_int, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %49, i32 0, i32 6
  %51 = load i8, ptr %50, align 1
  %52 = or i8 %51, 32
  store i8 %52, ptr %50, align 1
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %49, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %56, ptr %44, align 8
  %57 = alloca %main.T, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %57, i64 48)
  %59 = getelementptr inbounds %main.T, ptr %58, i32 0, i32 0
  %60 = getelementptr inbounds %main.T, ptr %58, i32 0, i32 1
  %61 = getelementptr inbounds %main.T, ptr %58, i32 0, i32 2
  %62 = getelementptr inbounds %main.T, ptr %58, i32 0, i32 3
  store i64 10, ptr %59, align 4
  store i64 20, ptr %60, align 4
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @1, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 5, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %66, ptr %61, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 0
  store ptr @2, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 1
  store i64 2, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %67, align 8
  %71 = load ptr, ptr @_llgo_string, align 8
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %70, ptr %72, align 8
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %73, i32 0, i32 0
  store ptr %71, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %73, i32 0, i32 1
  store ptr %72, ptr %75, align 8
  %76 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %73, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %76, ptr %62, align 8
  %77 = load ptr, ptr @_llgo_int, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %77, i32 0, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = or i8 %79, 32
  store i8 %80, ptr %78, align 1
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %81, i32 0, i32 0
  store ptr %77, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %81, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %83, align 8
  %84 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %81, align 8
  %85 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %7, %"github.com/goplus/llgo/internal/runtime.eface" %84)
  call void @main.assert(i1 %85)
  %86 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %87, align 1
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %88, i32 0, i32 0
  store ptr %86, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %88, i32 0, i32 1
  store ptr %87, ptr %90, align 8
  %91 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %88, align 8
  %92 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %13, %"github.com/goplus/llgo/internal/runtime.eface" %91)
  call void @main.assert(i1 %92)
  %93 = load ptr, ptr @_llgo_main.N, align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.N zeroinitializer, ptr %94, align 1
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %95, i32 0, i32 0
  store ptr %93, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %95, i32 0, i32 1
  store ptr %94, ptr %97, align 8
  %98 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %95, align 8
  %99 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %13, %"github.com/goplus/llgo/internal/runtime.eface" %98)
  %100 = xor i1 %99, true
  call void @main.assert(i1 %100)
  %101 = load %main.T, ptr %40, align 8
  %102 = load ptr, ptr @_llgo_main.T, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T %101, ptr %103, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, i32 0, i32 0
  store ptr %102, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, i32 0, i32 1
  store ptr %103, ptr %106, align 8
  %107 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, align 8
  %108 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %38, %"github.com/goplus/llgo/internal/runtime.eface" %107)
  call void @main.assert(i1 %108)
  %109 = load %main.T, ptr %58, align 8
  %110 = load ptr, ptr @_llgo_main.T, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T %109, ptr %111, align 8
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 0
  store ptr %110, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, i32 0, i32 1
  store ptr %111, ptr %114, align 8
  %115 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %112, align 8
  %116 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %38, %"github.com/goplus/llgo/internal/runtime.eface" %115)
  %117 = xor i1 %116, true
  call void @main.assert(i1 %117)
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  ret i32 0
}

define void @main.test() {
_llgo_0:
  ret void
}

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 32
  store i8 %8, ptr %6, align 1
  %9 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @3, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 4, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 0, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %14, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %20)
  store ptr %21, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %22 = load ptr, ptr @_llgo_main.T, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 0)
  store ptr %24, ptr @_llgo_main.T, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = load ptr, ptr @_llgo_any, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 1
  store i64 0, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 2
  store i64 0, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr @3, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 4, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr null, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 0, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %39, %"github.com/goplus/llgo/internal/runtime.String" %43, %"github.com/goplus/llgo/internal/runtime.Slice" %35)
  store ptr %44, ptr @_llgo_any, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %45 = load ptr, ptr @_llgo_any, align 8
  %46 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr @4, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 1, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr null, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 0, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %51, ptr %25, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %55, i1 false)
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 0
  store ptr @5, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 1
  store i64 1, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %57, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr null, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 0, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  %65 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %60, ptr %26, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %64, i1 false)
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @6, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 1, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr null, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 0, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %69, ptr %27, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %73, i1 false)
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 0
  store ptr @7, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 1
  store i64 1, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %75, align 8
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 0
  store ptr null, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 1
  store i64 0, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %79, align 8
  %83 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %78, ptr %45, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %82, i1 false)
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @3, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 4, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %89 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %88, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %56, ptr %89, align 8
  %90 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %88, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %65, ptr %90, align 8
  %91 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %88, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %74, ptr %91, align 8
  %92 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %88, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %83, ptr %92, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, i32 0, i32 0
  store ptr %88, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, i32 0, i32 1
  store i64 4, ptr %95, align 4
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, i32 0, i32 2
  store i64 4, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %93, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %87, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %97)
  store ptr %98, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %99 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br i1 %23, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @3, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 4, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr @8, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 6, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %24, %"github.com/goplus/llgo/internal/runtime.String" %103, %"github.com/goplus/llgo/internal/runtime.String" %107, ptr %99, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %108 = load ptr, ptr @_llgo_main.N, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 0)
  store ptr %110, ptr @_llgo_main.N, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %111 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %109, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 0
  store ptr @3, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 1
  store i64 4, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %112, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @9, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 6, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %110, %"github.com/goplus/llgo/internal/runtime.String" %115, %"github.com/goplus/llgo/internal/runtime.String" %119, ptr %111, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.init"()
