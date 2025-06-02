; ModuleID = 'github.com/goplus/llgo/cl/_testgo/equal'
source_filename = "github.com/goplus/llgo/cl/_testgo/equal"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/equal.T" = type { i64, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testgo/equal.N" = type {}
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testgo/equal.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [2 x i8] c"ok", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testgo/equal", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_any = linkonce global ptr null, align 8
@"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"X", align 1
@6 = private unnamed_addr constant [1 x i8] c"Y", align 1
@7 = private unnamed_addr constant [1 x i8] c"Z", align 1
@8 = private unnamed_addr constant [1 x i8] c"V", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"N", align 1
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@11 = private unnamed_addr constant [4 x i8] c"keys", align 1
@12 = private unnamed_addr constant [5 x i8] c"elems", align 1
@13 = private unnamed_addr constant [8 x i8] c"overflow", align 1

define void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/equal.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/equal.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init$after"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#1"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#2"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#3"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#4"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#5"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#6"()
  call void @"github.com/goplus/llgo/cl/_testgo/equal.init#7"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/equal.init#1$2", ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = icmp ne ptr %4, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %5)
  %6 = extractvalue { ptr, ptr } %3, 0
  %7 = icmp ne ptr null, %6
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %7)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/equal.init#1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#1$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
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
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %21)
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
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %37)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#3"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 48, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, i32 0, i32 3
  store i64 10, ptr %1, align 4
  store i64 20, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %3, align 8
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 48, i1 false)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %8, i32 0, i32 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %8, i32 0, i32 2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %8, i32 0, i32 3
  store i64 10, ptr %9, align 4
  store i64 20, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %11, align 8
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %13, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %12, align 8
  %16 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %16, i8 0, i64 48, i1 false)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 2
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, i32 0, i32 3
  store i64 10, ptr %17, align 4
  store i64 20, ptr %18, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %19, align 8
  %21 = load ptr, ptr @_llgo_string, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %22, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %20, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %25, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %26, align 8
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %25, ptr %26)
  %28 = and i1 true, %27
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %30, align 8
  %31 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %29, ptr %30)
  %32 = and i1 %28, %31
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %32)
  %33 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, align 8
  %34 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %8, align 8
  %35 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %33, 0
  %36 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %34, 0
  %37 = icmp eq i64 %35, %36
  %38 = and i1 true, %37
  %39 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %33, 1
  %40 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %34, 1
  %41 = icmp eq i64 %39, %40
  %42 = and i1 %38, %41
  %43 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %33, 2
  %44 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %34, 2
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %43, ptr %45, align 8
  %46 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %44, ptr %46, align 8
  %47 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %45, ptr %46)
  %48 = and i1 %42, %47
  %49 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %33, 3
  %50 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %34, 3
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %52, align 8
  %53 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %51, ptr %52)
  %54 = and i1 %48, %53
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %54)
  %55 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %0, align 8
  %56 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, align 8
  %57 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %55, 0
  %58 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %56, 0
  %59 = icmp eq i64 %57, %58
  %60 = and i1 true, %59
  %61 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %55, 1
  %62 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %56, 1
  %63 = icmp eq i64 %61, %62
  %64 = and i1 %60, %63
  %65 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %55, 2
  %66 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %56, 2
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %65, ptr %67, align 8
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %66, ptr %68, align 8
  %69 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %67, ptr %68)
  %70 = and i1 %64, %69
  %71 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %55, 3
  %72 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %56, 3
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr %73, align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %74, align 8
  %75 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %73, ptr %74)
  %76 = and i1 %70, %75
  %77 = xor i1 %76, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %77)
  %78 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %8, align 8
  %79 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %16, align 8
  %80 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %78, 0
  %81 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %79, 0
  %82 = icmp eq i64 %80, %81
  %83 = and i1 true, %82
  %84 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %78, 1
  %85 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %79, 1
  %86 = icmp eq i64 %84, %85
  %87 = and i1 %83, %86
  %88 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %78, 2
  %89 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %79, 2
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %88, ptr %90, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, ptr %91, align 8
  %92 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %90, ptr %91)
  %93 = and i1 %87, %92
  %94 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %78, 3
  %95 = extractvalue %"github.com/goplus/llgo/cl/_testgo/equal.T" %79, 3
  %96 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, ptr %97, align 8
  %98 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %96, ptr %97)
  %99 = and i1 %93, %98
  %100 = xor i1 %99, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %100)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#4"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 3, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 3, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, ptr %7, i64 8, i64 2, i64 0, i64 2, i64 2)
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %11, ptr %10, i64 8, i64 2, i64 0, i64 0, i64 2)
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %14 = icmp ne ptr %13, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %14)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, 0
  %16 = icmp ne ptr %15, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %16)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %18 = icmp ne ptr %17, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %18)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#5"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr inttoptr (i64 100 to ptr), 1
  %3 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %4, align 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 48, i1 false)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %7, i32 0, i32 2
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %7, i32 0, i32 3
  store i64 10, ptr %8, align 4
  store i64 20, ptr %9, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %10, align 8
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %11, align 8
  %15 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %7, align 8
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %15, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %20, i8 0, i64 48, i1 false)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %20, i32 0, i32 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %20, i32 0, i32 2
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %20, i32 0, i32 3
  store i64 10, ptr %21, align 4
  store i64 20, ptr %22, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %23, align 8
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %24, align 8
  %28 = alloca %"github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %28, i8 0, i64 48, i1 false)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %28, i32 0, i32 1
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %28, i32 0, i32 2
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %28, i32 0, i32 3
  store i64 10, ptr %29, align 4
  store i64 20, ptr %30, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %31, align 8
  %33 = load ptr, ptr @_llgo_string, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %34, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %32, align 8
  %37 = load ptr, ptr @_llgo_int, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr inttoptr (i64 100 to ptr), 1
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %40, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %41, align 8
  %42 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %40, ptr %41)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %42)
  %43 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %44, align 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %44, 1
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %48, align 8
  %49 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %47, ptr %48)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %49)
  %50 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N", align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/equal.N" zeroinitializer, ptr %51, align 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %54, align 8
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr %55, align 8
  %56 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %54, ptr %55)
  %57 = xor i1 %56, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %57)
  %58 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %20, align 8
  %59 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %58, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, ptr %60, 1
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %63, align 8
  %64 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62, ptr %64, align 8
  %65 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %63, ptr %64)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %65)
  %66 = load %"github.com/goplus/llgo/cl/_testgo/equal.T", ptr %28, align 8
  %67 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testgo/equal.T" %66, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %68, 1
  %71 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %71, align 8
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %70, ptr %72, align 8
  %73 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %71, ptr %72)
  %74 = xor i1 %73, true
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %74)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#6"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %2 = icmp eq ptr %0, %0
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %2)
  %3 = icmp ne ptr %0, %1
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %3)
  %4 = icmp ne ptr %0, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %4)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init#7"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = icmp ne ptr %1, null
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 %2)
  call void @"github.com/goplus/llgo/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.main"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.test"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/equal.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, ptr %11, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %10, i64 0, ptr %11)
  store ptr %12, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %13, ptr %14, i64 25, i64 48, i64 0, i64 0)
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %15, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.T", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %18 = load ptr, ptr @_llgo_any, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 2
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %24, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %24, ptr %25)
  store ptr %26, ptr @_llgo_any, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %27 = load ptr, ptr @_llgo_any, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %29 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr %30, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %31, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %29, ptr %30, ptr %28, i64 0, ptr %31, i1 false)
  %32 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %29, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %34 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %36, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %34, ptr %35, ptr %33, i64 8, ptr %36, i1 false)
  %37 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %34, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %39 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %40, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %41, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %39, ptr %40, ptr %38, i64 16, ptr %41, i1 false)
  %42 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %39, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %43, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 0, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 0, 2
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, ptr %48, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %47, ptr %48)
  %50 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %52, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %50, ptr %51, ptr %49, i64 32, ptr %52, i1 false)
  %53 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %55 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %32, ptr %55, align 8
  %56 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %37, ptr %56, align 8
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %42, ptr %57, align 8
  %58 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %53, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %54, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 4, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 4, 2
  %62 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %62, align 8
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, ptr %63, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %62, i64 48, ptr %63)
  store ptr %64, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  %65 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %66, align 8
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %67, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %15, ptr %65, ptr %66, ptr %67)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %69, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %68, ptr %69, i64 25, i64 0, i64 0, i64 0)
  %71 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N", align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %70, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/equal.N", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %73 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %72, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %75, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %70, ptr %73, ptr %74, ptr %75)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %76 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %80)
  %82 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %83 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr %83, align 8
  %84 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %84, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %82, ptr %83, ptr %81, i64 0, ptr %84, i1 false)
  %85 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %82, align 8
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %86)
  %88 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr %89, align 8
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %90, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %88, ptr %89, ptr %87, i64 8, ptr %90, i1 false)
  %91 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %88, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %92)
  %94 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %96, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %94, ptr %95, ptr %93, i64 72, ptr %96, i1 false)
  %97 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %94, align 8
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %99 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr %100, align 8
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %101, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %99, ptr %100, ptr %98, i64 200, ptr %101, i1 false)
  %102 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %99, align 8
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %104 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %103, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %85, ptr %104, align 8
  %105 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %103, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %91, ptr %105, align 8
  %106 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %103, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %97, ptr %106, align 8
  %107 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %103, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %102, ptr %107, align 8
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %103, 0
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 4, 1
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, i64 4, 2
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 39 }, ptr %111, align 8
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, ptr %112, align 8
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %111, i64 208, ptr %112)
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %78, ptr %79, ptr %113, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %114)
  store ptr %114, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
