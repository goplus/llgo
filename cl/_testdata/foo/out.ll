; ModuleID = 'github.com/goplus/llgo/cl/_testdata/foo'
source_filename = "github.com/goplus/llgo/cl/_testdata/foo"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testdata/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testdata/foo.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"V", align 1
@1 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@"github.com/goplus/llgo/cl/_testdata/foo.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@3 = private unnamed_addr constant [4 x i8] c"load", align 1

define void @"github.com/goplus/llgo/cl/_testdata/foo.Bar"(ptr %0) {
_llgo_0:
  %1 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = load { i64 }, ptr %1, align 4
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %6 = extractvalue { i64 } %3, 0
  %7 = inttoptr i64 %6 to ptr
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/foo.F"(ptr %0) {
_llgo_0:
  %1 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = load { i64 }, ptr %1, align 4
  %4 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/foo.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %5 = extractvalue { i64 } %3, 0
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %0, align 8
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %2, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %1, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  ret ptr %4
}

define ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %1, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(ptr %2)
  ret ptr %3
}

define void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).Load"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/foo.(*Game).initGame"(ptr %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/foo.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/foo.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/foo.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"github.com/goplus/llgo/cl/_testdata/foo.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %4 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %4, ptr %5, ptr %3, i64 0, ptr %6, i1 false)
  %7 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %13, i64 8, ptr %14)
  store ptr %15, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %17 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %19, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %17, ptr %18, ptr %16, i64 0, ptr %19, i1 false)
  %20 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 2
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %26, i64 8, ptr %27)
  store ptr %28, ptr @"github.com/goplus/llgo/cl/_testdata/foo.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
