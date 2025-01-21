; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/strucintf'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/strucintf"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"v", align 1
@1 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/strucintf", align 1
@2 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"V", align 1
@4 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@5 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.Foo"() {
_llgo_0:
  %0 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load { i64 }, ptr %0, align 4
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %5 = extractvalue { i64 } %2, 0
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.Foo"()
  %1 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %3 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %5 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.Bar"()
  %8 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %8, i8 0, i64 8, i1 false)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 0
  %10 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %12 = getelementptr inbounds { i64 }, ptr %8, i32 0, i32 0
  %13 = load i64, ptr %12, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %14 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %14, i8 0, i64 8, i1 false)
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.F"()
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, 0
  %17 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %19 = getelementptr inbounds { i64 }, ptr %14, i32 0, i32 0
  %20 = load i64, ptr %19, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret void

_llgo_9:                                          ; preds = %_llgo_18
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %22 = ptrtoint ptr %21 to i64
  %23 = insertvalue { i64 } undef, i64 %22, 0
  %24 = insertvalue { { i64 }, i1 } undef, { i64 } %23, 0
  %25 = insertvalue { { i64 }, i1 } %24, i1 true, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %26 = phi { { i64 }, i1 } [ %25, %_llgo_10 ], [ zeroinitializer, %_llgo_11 ]
  %27 = extractvalue { { i64 }, i1 } %26, 0
  store { i64 } %27, ptr %1, align 4
  %28 = extractvalue { { i64 }, i1 } %26, 1
  br i1 %28, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, 1
  %30 = ptrtoint ptr %29 to i64
  %31 = insertvalue { i64 } undef, i64 %30, 0
  %32 = insertvalue { { i64 }, i1 } undef, { i64 } %31, 0
  %33 = insertvalue { { i64 }, i1 } %32, i1 true, 1
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %34 = phi { { i64 }, i1 } [ %33, %_llgo_13 ], [ zeroinitializer, %_llgo_14 ]
  %35 = extractvalue { { i64 }, i1 } %34, 0
  store { i64 } %35, ptr %8, align 4
  %36 = extractvalue { { i64 }, i1 } %34, 1
  br i1 %36, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, 1
  %38 = ptrtoint ptr %37 to i64
  %39 = insertvalue { i64 } undef, i64 %38, 0
  %40 = insertvalue { { i64 }, i1 } undef, { i64 } %39, 0
  %41 = insertvalue { { i64 }, i1 } %40, i1 true, 1
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %42 = phi { { i64 }, i1 } [ %41, %_llgo_16 ], [ zeroinitializer, %_llgo_17 ]
  %43 = extractvalue { { i64 }, i1 } %42, 0
  store { i64 } %43, ptr %14, align 4
  %44 = extractvalue { { i64 }, i1 } %42, 1
  br i1 %44, label %_llgo_7, label %_llgo_9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.init$after"() {
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
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %6 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %5, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 52 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  store ptr %10, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %11 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %13, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 52 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  store ptr %20, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.Bar"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.F"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
