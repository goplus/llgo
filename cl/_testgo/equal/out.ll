; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.T = type { i64, i64, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.eface" }
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
@4 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@_llgo_any = linkonce global ptr null, align 8
@"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"X", align 1
@6 = private unnamed_addr constant [1 x i8] c"Y", align 1
@7 = private unnamed_addr constant [1 x i8] c"Z", align 1
@8 = private unnamed_addr constant [1 x i8] c"V", align 1
@9 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_main.N = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@11 = private unnamed_addr constant [1 x i8] c"N", align 1
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@13 = private unnamed_addr constant [4 x i8] c"keys", align 1
@14 = private unnamed_addr constant [5 x i8] c"elems", align 1
@15 = private unnamed_addr constant [8 x i8] c"overflow", align 1
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
  call void @"main.init#6"()
  call void @"main.init#7"()
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
  call void @main.assert(i1 true)
  call void @main.assert(i1 true)
  call void @main.assert(i1 true)
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = icmp ne ptr %7, null
  call void @main.assert(i1 %8)
  %9 = extractvalue { ptr, ptr } %6, 0
  %10 = icmp ne ptr null, %9
  call void @main.assert(i1 %10)
  call void @main.assert(i1 true)
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
  call void @llvm.memset(ptr %0, i8 0, i64 24, i1 false)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 1, ptr %1, align 4
  store i64 2, ptr %2, align 4
  store i64 3, ptr %3, align 4
  %4 = alloca [3 x i64], align 8
  call void @llvm.memset(ptr %4, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds i64, ptr %4, i64 0
  %6 = getelementptr inbounds i64, ptr %4, i64 1
  %7 = getelementptr inbounds i64, ptr %4, i64 2
  store i64 1, ptr %5, align 4
  store i64 2, ptr %6, align 4
  store i64 3, ptr %7, align 4
  %8 = load [3 x i64], ptr %0, align 4
  %9 = load [3 x i64], ptr %4, align 4
  %10 = extractvalue [3 x i64] %8, 0
  %11 = extractvalue [3 x i64] %9, 0
  %12 = icmp eq i64 %10, %11
  %13 = and i1 true, %12
  %14 = extractvalue [3 x i64] %8, 1
  %15 = extractvalue [3 x i64] %9, 1
  %16 = icmp eq i64 %14, %15
  %17 = and i1 %13, %16
  %18 = extractvalue [3 x i64] %8, 2
  %19 = extractvalue [3 x i64] %9, 2
  %20 = icmp eq i64 %18, %19
  %21 = and i1 %17, %20
  call void @main.assert(i1 %21)
  %22 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 1, ptr %22, align 4
  %23 = load [3 x i64], ptr %0, align 4
  %24 = load [3 x i64], ptr %4, align 4
  %25 = extractvalue [3 x i64] %23, 0
  %26 = extractvalue [3 x i64] %24, 0
  %27 = icmp eq i64 %25, %26
  %28 = and i1 true, %27
  %29 = extractvalue [3 x i64] %23, 1
  %30 = extractvalue [3 x i64] %24, 1
  %31 = icmp eq i64 %29, %30
  %32 = and i1 %28, %31
  %33 = extractvalue [3 x i64] %23, 2
  %34 = extractvalue [3 x i64] %24, 2
  %35 = icmp eq i64 %33, %34
  %36 = and i1 %32, %35
  %37 = xor i1 %36, true
  call void @main.assert(i1 %37)
  ret void
}

define void @"main.init#3"() {
_llgo_0:
  %0 = alloca %main.T, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 48, i1 false)
  %1 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %main.T, ptr %0, i32 0, i32 3
  store i64 10, ptr %1, align 4
  store i64 20, ptr %2, align 4
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @1, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 5, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %8, ptr %3, align 8
  %9 = load ptr, ptr @_llgo_int, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %13, ptr %4, align 8
  %14 = alloca %main.T, align 8
  call void @llvm.memset(ptr %14, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %main.T, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %main.T, ptr %14, i32 0, i32 1
  %17 = getelementptr inbounds %main.T, ptr %14, i32 0, i32 2
  %18 = getelementptr inbounds %main.T, ptr %14, i32 0, i32 3
  store i64 10, ptr %15, align 4
  store i64 20, ptr %16, align 4
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @1, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 5, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %22, ptr %17, align 8
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 0
  store ptr %23, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %26, align 8
  %27 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %24, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %27, ptr %18, align 8
  %28 = alloca %main.T, align 8
  call void @llvm.memset(ptr %28, i8 0, i64 48, i1 false)
  %29 = getelementptr inbounds %main.T, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds %main.T, ptr %28, i32 0, i32 1
  %31 = getelementptr inbounds %main.T, ptr %28, i32 0, i32 2
  %32 = getelementptr inbounds %main.T, ptr %28, i32 0, i32 3
  store i64 10, ptr %29, align 4
  store i64 20, ptr %30, align 4
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @1, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 5, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %36, ptr %31, align 8
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @2, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 2, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = load ptr, ptr @_llgo_string, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 0
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 1
  store ptr %42, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %46, ptr %32, align 8
  call void @main.assert(i1 true)
  %47 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer)
  %48 = and i1 true, %47
  %49 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  %50 = and i1 %48, %49
  call void @main.assert(i1 %50)
  %51 = load %main.T, ptr %0, align 8
  %52 = load %main.T, ptr %14, align 8
  %53 = extractvalue %main.T %51, 0
  %54 = extractvalue %main.T %52, 0
  %55 = icmp eq i64 %53, %54
  %56 = and i1 true, %55
  %57 = extractvalue %main.T %51, 1
  %58 = extractvalue %main.T %52, 1
  %59 = icmp eq i64 %57, %58
  %60 = and i1 %56, %59
  %61 = extractvalue %main.T %51, 2
  %62 = extractvalue %main.T %52, 2
  %63 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %61, %"github.com/goplus/llgo/internal/runtime.String" %62)
  %64 = and i1 %60, %63
  %65 = extractvalue %main.T %51, 3
  %66 = extractvalue %main.T %52, 3
  %67 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %65, %"github.com/goplus/llgo/internal/runtime.eface" %66)
  %68 = and i1 %64, %67
  call void @main.assert(i1 %68)
  %69 = load %main.T, ptr %0, align 8
  %70 = load %main.T, ptr %28, align 8
  %71 = extractvalue %main.T %69, 0
  %72 = extractvalue %main.T %70, 0
  %73 = icmp eq i64 %71, %72
  %74 = and i1 true, %73
  %75 = extractvalue %main.T %69, 1
  %76 = extractvalue %main.T %70, 1
  %77 = icmp eq i64 %75, %76
  %78 = and i1 %74, %77
  %79 = extractvalue %main.T %69, 2
  %80 = extractvalue %main.T %70, 2
  %81 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %79, %"github.com/goplus/llgo/internal/runtime.String" %80)
  %82 = and i1 %78, %81
  %83 = extractvalue %main.T %69, 3
  %84 = extractvalue %main.T %70, 3
  %85 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %83, %"github.com/goplus/llgo/internal/runtime.eface" %84)
  %86 = and i1 %82, %85
  %87 = xor i1 %86, true
  call void @main.assert(i1 %87)
  %88 = load %main.T, ptr %14, align 8
  %89 = load %main.T, ptr %28, align 8
  %90 = extractvalue %main.T %88, 0
  %91 = extractvalue %main.T %89, 0
  %92 = icmp eq i64 %90, %91
  %93 = and i1 true, %92
  %94 = extractvalue %main.T %88, 1
  %95 = extractvalue %main.T %89, 1
  %96 = icmp eq i64 %94, %95
  %97 = and i1 %93, %96
  %98 = extractvalue %main.T %88, 2
  %99 = extractvalue %main.T %89, 2
  %100 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %98, %"github.com/goplus/llgo/internal/runtime.String" %99)
  %101 = and i1 %97, %100
  %102 = extractvalue %main.T %88, 3
  %103 = extractvalue %main.T %89, 3
  %104 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %102, %"github.com/goplus/llgo/internal/runtime.eface" %103)
  %105 = and i1 %101, %104
  %106 = xor i1 %105, true
  call void @main.assert(i1 %106)
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
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %1, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %3, align 8
  %4 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %1, align 8
  %5 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %6, align 1
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %6, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  %11 = alloca %main.T, align 8
  call void @llvm.memset(ptr %11, i8 0, i64 48, i1 false)
  %12 = getelementptr inbounds %main.T, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %main.T, ptr %11, i32 0, i32 1
  %14 = getelementptr inbounds %main.T, ptr %11, i32 0, i32 2
  %15 = getelementptr inbounds %main.T, ptr %11, i32 0, i32 3
  store i64 10, ptr %12, align 4
  store i64 20, ptr %13, align 4
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @1, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 5, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %19, ptr %14, align 8
  %20 = load ptr, ptr @_llgo_int, align 8
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %23, align 8
  %24 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %21, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %24, ptr %15, align 8
  %25 = load %main.T, ptr %11, align 8
  %26 = load ptr, ptr @_llgo_main.T, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T %25, ptr %27, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %26, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr %27, ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  %32 = alloca %main.T, align 8
  call void @llvm.memset(ptr %32, i8 0, i64 48, i1 false)
  %33 = getelementptr inbounds %main.T, ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds %main.T, ptr %32, i32 0, i32 1
  %35 = getelementptr inbounds %main.T, ptr %32, i32 0, i32 2
  %36 = getelementptr inbounds %main.T, ptr %32, i32 0, i32 3
  store i64 10, ptr %33, align 4
  store i64 20, ptr %34, align 4
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @1, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 5, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %35, align 8
  %41 = load ptr, ptr @_llgo_int, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, i32 0, i32 0
  store ptr %41, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, i32 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %45, ptr %36, align 8
  %46 = alloca %main.T, align 8
  call void @llvm.memset(ptr %46, i8 0, i64 48, i1 false)
  %47 = getelementptr inbounds %main.T, ptr %46, i32 0, i32 0
  %48 = getelementptr inbounds %main.T, ptr %46, i32 0, i32 1
  %49 = getelementptr inbounds %main.T, ptr %46, i32 0, i32 2
  %50 = getelementptr inbounds %main.T, ptr %46, i32 0, i32 3
  store i64 10, ptr %47, align 4
  store i64 20, ptr %48, align 4
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 0
  store ptr @1, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 1
  store i64 5, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %51, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %54, ptr %49, align 8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @2, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 2, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = load ptr, ptr @_llgo_string, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %58, ptr %60, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 0
  store ptr %59, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 1
  store ptr %60, ptr %63, align 8
  %64 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %64, ptr %50, align 8
  %65 = load ptr, ptr @_llgo_int, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, i32 0, i32 0
  store ptr %65, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, i32 0, i32 1
  store ptr inttoptr (i64 100 to ptr), ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, align 8
  %70 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %4, %"github.com/goplus/llgo/internal/runtime.eface" %69)
  call void @main.assert(i1 %70)
  %71 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %72, align 1
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %73, i32 0, i32 0
  store ptr %71, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %73, i32 0, i32 1
  store ptr %72, ptr %75, align 8
  %76 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %73, align 8
  %77 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %10, %"github.com/goplus/llgo/internal/runtime.eface" %76)
  call void @main.assert(i1 %77)
  %78 = load ptr, ptr @_llgo_main.N, align 8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.N zeroinitializer, ptr %79, align 1
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %80, i32 0, i32 0
  store ptr %78, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %80, i32 0, i32 1
  store ptr %79, ptr %82, align 8
  %83 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %80, align 8
  %84 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %10, %"github.com/goplus/llgo/internal/runtime.eface" %83)
  %85 = xor i1 %84, true
  call void @main.assert(i1 %85)
  %86 = load %main.T, ptr %32, align 8
  %87 = load ptr, ptr @_llgo_main.T, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T %86, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 0
  store ptr %87, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 1
  store ptr %88, ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, align 8
  %93 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %31, %"github.com/goplus/llgo/internal/runtime.eface" %92)
  call void @main.assert(i1 %93)
  %94 = load %main.T, ptr %46, align 8
  %95 = load ptr, ptr @_llgo_main.T, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.T %94, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, i32 0, i32 0
  store ptr %95, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, i32 0, i32 1
  store ptr %96, ptr %99, align 8
  %100 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, align 8
  %101 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %31, %"github.com/goplus/llgo/internal/runtime.eface" %100)
  %102 = xor i1 %101, true
  call void @main.assert(i1 %102)
  ret void
}

define void @"main.init#6"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 8, i64 0)
  %2 = icmp eq ptr %0, %0
  call void @main.assert(i1 %2)
  %3 = icmp ne ptr %0, %1
  call void @main.assert(i1 %3)
  %4 = icmp ne ptr %0, null
  call void @main.assert(i1 %4)
  ret void
}

define void @"main.init#7"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = icmp ne ptr %1, null
  call void @main.assert(i1 %2)
  call void @main.assert(i1 true)
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
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr @3, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 4, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, i32 0, i32 2
  store i64 0, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %13, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %11, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %17)
  store ptr %18, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @4, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 6, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %22, i64 25, i64 48, i64 0, i64 0)
  %24 = load ptr, ptr @_llgo_main.T, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %23, ptr @_llgo_main.T, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %26 = load ptr, ptr @_llgo_any, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 2
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @3, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 4, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %37, %"github.com/goplus/llgo/internal/runtime.String" %41, %"github.com/goplus/llgo/internal/runtime.Slice" %33)
  store ptr %42, ptr @_llgo_any, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %43 = load ptr, ptr @_llgo_any, align 8
  %44 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 0
  store ptr @5, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 1
  store i64 1, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %46, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 0
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 1
  store i64 0, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %50, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %55 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %49, ptr %54, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %53, i1 false)
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @6, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 1, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr null, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 0, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %65 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %59, ptr %64, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %63, i1 false)
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @7, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 1, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr null, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 0, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %75 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %69, ptr %74, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %73, i1 false)
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @8, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 1, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr null, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 0, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, i32 0, i32 0
  store ptr %84, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, i32 0, i32 1
  store i64 0, ptr %87, align 4
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, i32 0, i32 2
  store i64 0, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %85, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @3, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 4, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr null, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 0, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %93, %"github.com/goplus/llgo/internal/runtime.String" %97, %"github.com/goplus/llgo/internal/runtime.Slice" %89)
  %99 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %79, ptr %98, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %83, i1 false)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @3, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 4, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %105 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %104, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %55, ptr %105, align 8
  %106 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %104, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %65, ptr %106, align 8
  %107 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %104, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %75, ptr %107, align 8
  %108 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %104, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %99, ptr %108, align 8
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 0
  store ptr %104, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 1
  store i64 4, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 2
  store i64 4, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %103, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %113)
  store ptr %114, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %115 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br i1 %25, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @3, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 4, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 0
  store ptr @9, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 1
  store i64 1, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %120, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %23, %"github.com/goplus/llgo/internal/runtime.String" %119, %"github.com/goplus/llgo/internal/runtime.String" %123, ptr %115, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @10, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 6, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %127, i64 25, i64 0, i64 0, i64 0)
  %129 = load ptr, ptr @_llgo_main.N, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %128, ptr @_llgo_main.N, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %131 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %130, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 0
  store ptr @3, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 1
  store i64 4, ptr %134, align 4
  %135 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %132, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 0
  store ptr @11, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 1
  store i64 1, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %136, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %128, %"github.com/goplus/llgo/internal/runtime.String" %135, %"github.com/goplus/llgo/internal/runtime.String" %139, ptr %131, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %140 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @12, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 7, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr null, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 0, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %152)
  %154 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %147, ptr %153, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %151, i1 false)
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @13, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 4, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr null, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 0, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %164 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %163)
  %165 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %158, ptr %164, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %162, i1 false)
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr @14, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 5, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 0
  store ptr null, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 1
  store i64 0, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %170, align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %174)
  %176 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %169, ptr %175, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %173, i1 false)
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 0
  store ptr @15, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 1
  store i64 8, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %177, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 0
  store ptr null, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 1
  store i64 0, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %181, align 8
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %186 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %180, ptr %185, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %184, i1 false)
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @3, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 4, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %192 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %191, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %154, ptr %192, align 8
  %193 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %191, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %165, ptr %193, align 8
  %194 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %191, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %176, ptr %194, align 8
  %195 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %191, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %186, ptr %195, align 8
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %196, i32 0, i32 0
  store ptr %191, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %196, i32 0, i32 1
  store i64 4, ptr %198, align 4
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %196, i32 0, i32 2
  store i64 4, ptr %199, align 4
  %200 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %196, align 8
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %190, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %200)
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %142, ptr %143, ptr %201, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %202)
  store ptr %202, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
