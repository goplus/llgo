; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/equal'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/equal"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" = type { i64, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/compiler/cl/_testgo/equal.N" = type {}
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/compiler/cl/_testgo/equal.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [2 x i8] c"ok", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/equal", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.T" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_any = linkonce global ptr null, align 8
@"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"X", align 1
@6 = private unnamed_addr constant [1 x i8] c"Y", align 1
@7 = private unnamed_addr constant [1 x i8] c"Z", align 1
@8 = private unnamed_addr constant [1 x i8] c"V", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.N" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"N", align 1
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@11 = private unnamed_addr constant [4 x i8] c"keys", align 1
@12 = private unnamed_addr constant [5 x i8] c"elems", align 1
@13 = private unnamed_addr constant [8 x i8] c"overflow", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init$after"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#1"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#2"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#3"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#4"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#5"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#6"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#7"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#1"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#1$2", ptr undef }, ptr %1, 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = icmp ne ptr %4, null
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %5)
  %6 = extractvalue { ptr, ptr } %3, 0
  %7 = icmp ne ptr null, %6
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %7)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define i64 @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#1$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
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
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %21)
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
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %37)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#3"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 48, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %0, i32 0, i32 3
  store i64 10, ptr %1, align 4
  store i64 20, ptr %2, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %3, align 8
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 48, i1 false)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %8, i32 0, i32 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %8, i32 0, i32 2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %8, i32 0, i32 3
  store i64 10, ptr %9, align 4
  store i64 20, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %11, align 8
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %13, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %12, align 8
  %16 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %16, i8 0, i64 48, i1 false)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %16, i32 0, i32 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %16, i32 0, i32 2
  %20 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %16, i32 0, i32 3
  store i64 10, ptr %17, align 4
  store i64 20, ptr %18, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %19, align 8
  %21 = load ptr, ptr @_llgo_string, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %22, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %20, align 8
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  %26 = and i1 true, %25
  %27 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %28 = and i1 %26, %27
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %28)
  %29 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %0, align 8
  %30 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %8, align 8
  %31 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %29, 0
  %32 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %30, 0
  %33 = icmp eq i64 %31, %32
  %34 = and i1 true, %33
  %35 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %29, 1
  %36 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %30, 1
  %37 = icmp eq i64 %35, %36
  %38 = and i1 %34, %37
  %39 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %29, 2
  %40 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %30, 2
  %41 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %39, %"github.com/goplus/llgo/runtime/internal/runtime.String" %40)
  %42 = and i1 %38, %41
  %43 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %29, 3
  %44 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %30, 3
  %45 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  %46 = and i1 %42, %45
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %46)
  %47 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %0, align 8
  %48 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %16, align 8
  %49 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %47, 0
  %50 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %48, 0
  %51 = icmp eq i64 %49, %50
  %52 = and i1 true, %51
  %53 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %47, 1
  %54 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %48, 1
  %55 = icmp eq i64 %53, %54
  %56 = and i1 %52, %55
  %57 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %47, 2
  %58 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %48, 2
  %59 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %57, %"github.com/goplus/llgo/runtime/internal/runtime.String" %58)
  %60 = and i1 %56, %59
  %61 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %47, 3
  %62 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %48, 3
  %63 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62)
  %64 = and i1 %60, %63
  %65 = xor i1 %64, true
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %65)
  %66 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %8, align 8
  %67 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %16, align 8
  %68 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %66, 0
  %69 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %67, 0
  %70 = icmp eq i64 %68, %69
  %71 = and i1 true, %70
  %72 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %66, 1
  %73 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %67, 1
  %74 = icmp eq i64 %72, %73
  %75 = and i1 %71, %74
  %76 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %66, 2
  %77 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %67, 2
  %78 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %76, %"github.com/goplus/llgo/runtime/internal/runtime.String" %77)
  %79 = and i1 %75, %78
  %80 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %66, 3
  %81 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %67, 3
  %82 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %81)
  %83 = and i1 %79, %82
  %84 = xor i1 %83, true
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %84)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#4"() {
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
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %7, i64 8, i64 2, i64 0, i64 2, i64 2)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %10 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %9, i64 8, i64 2, i64 0, i64 0, i64 2)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, 0
  %12 = icmp ne ptr %11, null
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %12)
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 0
  %14 = icmp ne ptr %13, null
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %14)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 0
  %16 = icmp ne ptr %15, null
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %16)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#5"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr inttoptr (i64 100 to ptr), 1
  %3 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %4, align 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 48, i1 false)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %7, i32 0, i32 2
  %11 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %7, i32 0, i32 3
  store i64 10, ptr %8, align 4
  store i64 20, ptr %9, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %10, align 8
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %11, align 8
  %15 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %7, align 8
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %15, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  %20 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %20, i8 0, i64 48, i1 false)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %20, i32 0, i32 1
  %23 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %20, i32 0, i32 2
  %24 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %20, i32 0, i32 3
  store i64 10, ptr %21, align 4
  store i64 20, ptr %22, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %23, align 8
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %24, align 8
  %28 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  call void @llvm.memset(ptr %28, i8 0, i64 48, i1 false)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %28, i32 0, i32 1
  %31 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %28, i32 0, i32 2
  %32 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %28, i32 0, i32 3
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
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %40)
  %41 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store {} zeroinitializer, ptr %42, align 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %42, 1
  %45 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %45)
  %46 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.N", align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/equal.N" zeroinitializer, ptr %47, align 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  %50 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  %51 = xor i1 %50, true
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %51)
  %52 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %20, align 8
  %53 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %52, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr %54, 1
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %57)
  %58 = load %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T", ptr %28, align 8
  %59 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/equal.T" %58, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, ptr %60, 1
  %63 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %62)
  %64 = xor i1 %63, true
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %64)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#6"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %2 = icmp eq ptr %0, %0
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %2)
  %3 = icmp ne ptr %0, %1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %3)
  %4 = icmp ne ptr %0, null
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %4)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init#7"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = icmp ne ptr %1, null
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 %2)
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.assert"(i1 true)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.main"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.test"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/equal.init$after"() {
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
  %6 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %13, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.T", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %16 = load ptr, ptr @_llgo_any, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 0, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 0, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  store ptr %22, ptr @_llgo_any, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %23 = load ptr, ptr @_llgo_any, align 8
  %24 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %27 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr %26, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %29 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %28, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %31 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %30, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 0, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 0, 2
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35)
  %37 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %36, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %39 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %38, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %27, ptr %39, align 8
  %40 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %38, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %29, ptr %40, align 8
  %41 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %38, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %31, ptr %41, align 8
  %42 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %38, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %37, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %38, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 4, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 4, 2
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45)
  store ptr %46, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %47 = load ptr, ptr @"_llgo_struct$5D_KhR3tDEp-wpx9caTiVZca43wS-XW6slE9Bsr8rsk", align 8
  br i1 %15, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %13, ptr %47, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, i64 25, i64 0, i64 0, i64 0)
  %49 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.N", align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %48, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/equal.N", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %51 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %50, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %48, ptr %51, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %52 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %56)
  %58 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr %57, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %59)
  %61 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr %60, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %62)
  %64 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %63, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %66 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 8 }, ptr %65, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %68 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %58, ptr %68, align 8
  %69 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %61, ptr %69, align 8
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %64, ptr %70, align 8
  %71 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %66, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %67, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 4, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 4, 2
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74)
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %54, ptr %55, ptr %75, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %76)
  store ptr %76, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
