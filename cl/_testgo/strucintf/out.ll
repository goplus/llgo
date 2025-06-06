; ModuleID = 'github.com/goplus/llgo/cl/_testgo/strucintf'
source_filename = "github.com/goplus/llgo/cl/_testgo/strucintf"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"v", align 1
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/strucintf", align 1
@2 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"V", align 1
@4 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@5 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.Foo"(ptr %0) {
_llgo_0:
  %1 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = load { i64 }, ptr %1, align 4
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %6 = extractvalue { i64 } %3, 0
  %7 = inttoptr i64 %6 to ptr
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  call void @"github.com/goplus/llgo/cl/_testgo/strucintf.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @"github.com/goplus/llgo/cl/_testgo/strucintf.Foo"(ptr %0)
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  %2 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 0
  %4 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %6 = getelementptr inbounds { i64 }, ptr %2, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.Bar"(ptr %8)
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %8, align 8
  %10 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 0
  %12 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 }, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %15 = getelementptr inbounds { i64 }, ptr %10, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %17 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %17, i8 0, i64 8, i1 false)
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  call void @"github.com/goplus/llgo/cl/_testdata/foo.F"(ptr %18)
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %18, align 8
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, 0
  %21 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 }, ptr %23, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %24 = getelementptr inbounds { i64 }, ptr %17, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret void

_llgo_9:                                          ; preds = %_llgo_18
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 }, ptr %26, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, 1
  %28 = ptrtoint ptr %27 to i64
  %29 = insertvalue { i64 } undef, i64 %28, 0
  %30 = insertvalue { { i64 }, i1 } undef, { i64 } %29, 0
  %31 = insertvalue { { i64 }, i1 } %30, i1 true, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %32 = phi { { i64 }, i1 } [ %31, %_llgo_10 ], [ zeroinitializer, %_llgo_11 ]
  %33 = extractvalue { { i64 }, i1 } %32, 0
  store { i64 } %33, ptr %2, align 4
  %34 = extractvalue { { i64 }, i1 } %32, 1
  br i1 %34, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 1
  %36 = ptrtoint ptr %35 to i64
  %37 = insertvalue { i64 } undef, i64 %36, 0
  %38 = insertvalue { { i64 }, i1 } undef, { i64 } %37, 0
  %39 = insertvalue { { i64 }, i1 } %38, i1 true, 1
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %40 = phi { { i64 }, i1 } [ %39, %_llgo_13 ], [ zeroinitializer, %_llgo_14 ]
  %41 = extractvalue { { i64 }, i1 } %40, 0
  store { i64 } %41, ptr %10, align 4
  %42 = extractvalue { { i64 }, i1 } %40, 1
  br i1 %42, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, 1
  %44 = ptrtoint ptr %43 to i64
  %45 = insertvalue { i64 } undef, i64 %44, 0
  %46 = insertvalue { { i64 }, i1 } undef, { i64 } %45, 0
  %47 = insertvalue { { i64 }, i1 } %46, i1 true, 1
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %48 = phi { { i64 }, i1 } [ %47, %_llgo_16 ], [ zeroinitializer, %_llgo_17 ]
  %49 = extractvalue { { i64 }, i1 } %48, 0
  store { i64 } %49, ptr %17, align 4
  %50 = extractvalue { { i64 }, i1 } %48, 1
  br i1 %50, label %_llgo_7, label %_llgo_9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.init$after"() {
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %13, i64 8, ptr %14)
  store ptr %15, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %17 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %18, align 8
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %26, i64 8, ptr %27)
  store ptr %28, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.Bar"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.F"(ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
