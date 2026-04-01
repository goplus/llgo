; ModuleID = 'github.com/goplus/llgo/cl/_testgo/strucintf'
source_filename = "github.com/goplus/llgo/cl/_testgo/strucintf"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1455090933, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, ptr @"*github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, align 8
@0 = private unnamed_addr constant [16 x i8] c"struct { v int }", align 1
@"*github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1267158908, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 16 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" }, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/strucintf", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 588020711, i8 8, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr @"*_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk$fields", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [16 x i8] c"struct { V int }", align 1
@"*_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2112228924, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 16 }, ptr null }, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" }, align 8
@6 = private unnamed_addr constant [1 x i8] c"V", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@8 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testgo/strucintf.Foo"() {
_llgo_0:
  %0 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { i64 }, ptr %0, align 4
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", ptr %6, ptr %0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", ptr undef }, ptr %6, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7
}

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/strucintf.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/strucintf.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testgo/strucintf.Foo"()
  %1 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %3 = icmp eq ptr %2, @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"
  br i1 %3, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %4 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %5, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.Bar"()
  %9 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 8, i1 false)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 0
  %11 = icmp eq ptr %10, @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk"
  br i1 %11, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %12 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = getelementptr inbounds { i64 }, ptr %9, i32 0, i32 0
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load i64, ptr %13, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %16 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %16, i8 0, i64 8, i1 false)
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.F"()
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, 0
  %19 = icmp eq ptr %18, @"github.com/goplus/llgo/cl/_testgo/strucintf.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"
  br i1 %19, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %20 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds { i64 }, ptr %16, i32 0, i32 0
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret void

_llgo_9:                                          ; preds = %_llgo_18
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %25 = load { i64 }, ptr %24, align 4
  %26 = insertvalue { { i64 }, i1 } undef, { i64 } %25, 0
  %27 = insertvalue { { i64 }, i1 } %26, i1 true, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %28 = phi { { i64 }, i1 } [ %27, %_llgo_10 ], [ zeroinitializer, %_llgo_11 ]
  %29 = extractvalue { { i64 }, i1 } %28, 0
  store { i64 } %29, ptr %1, align 4
  %30 = extractvalue { { i64 }, i1 } %28, 1
  br i1 %30, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, 1
  %32 = load { i64 }, ptr %31, align 4
  %33 = insertvalue { { i64 }, i1 } undef, { i64 } %32, 0
  %34 = insertvalue { { i64 }, i1 } %33, i1 true, 1
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %35 = phi { { i64 }, i1 } [ %34, %_llgo_13 ], [ zeroinitializer, %_llgo_14 ]
  %36 = extractvalue { { i64 }, i1 } %35, 0
  store { i64 } %36, ptr %9, align 4
  %37 = extractvalue { { i64 }, i1 } %35, 1
  br i1 %37, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, 1
  %39 = load { i64 }, ptr %38, align 4
  %40 = insertvalue { { i64 }, i1 } undef, { i64 } %39, 0
  %41 = insertvalue { { i64 }, i1 } %40, i1 true, 1
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %42 = phi { { i64 }, i1 } [ %41, %_llgo_16 ], [ zeroinitializer, %_llgo_17 ]
  %43 = extractvalue { { i64 }, i1 } %42, 0
  store { i64 } %43, ptr %16, align 4
  %44 = extractvalue { { i64 }, i1 } %42, 1
  br i1 %44, label %_llgo_7, label %_llgo_9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.Bar"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/cl/_testdata/foo.F"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
