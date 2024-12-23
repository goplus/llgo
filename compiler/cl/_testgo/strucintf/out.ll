; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"v", align 1
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@2 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"V", align 1
@4 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@5 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.eface" @main.Foo() {
_llgo_0:
  %0 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load { i64 }, ptr %0, align 4
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %5 = extractvalue { i64 } %2, 0
  %6 = inttoptr i64 %5 to ptr
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @main.Foo()
  %3 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 0
  %5 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %7 = getelementptr inbounds { i64 }, ptr %3, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.Bar"()
  %10 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 0
  %12 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %14 = getelementptr inbounds { i64 }, ptr %10, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %16 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %16, i8 0, i64 8, i1 false)
  %17 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.F"()
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, 0
  %19 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %21 = getelementptr inbounds { i64 }, ptr %16, i32 0, i32 0
  %22 = load i64, ptr %21, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_18
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 9 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 1
  %24 = ptrtoint ptr %23 to i64
  %25 = insertvalue { i64 } undef, i64 %24, 0
  %26 = insertvalue { { i64 }, i1 } undef, { i64 } %25, 0
  %27 = insertvalue { { i64 }, i1 } %26, i1 true, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %28 = phi { { i64 }, i1 } [ %27, %_llgo_10 ], [ zeroinitializer, %_llgo_11 ]
  %29 = extractvalue { { i64 }, i1 } %28, 0
  store { i64 } %29, ptr %3, align 4
  %30 = extractvalue { { i64 }, i1 } %28, 1
  br i1 %30, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, 1
  %32 = ptrtoint ptr %31 to i64
  %33 = insertvalue { i64 } undef, i64 %32, 0
  %34 = insertvalue { { i64 }, i1 } undef, { i64 } %33, 0
  %35 = insertvalue { { i64 }, i1 } %34, i1 true, 1
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %36 = phi { { i64 }, i1 } [ %35, %_llgo_13 ], [ zeroinitializer, %_llgo_14 ]
  %37 = extractvalue { { i64 }, i1 } %36, 0
  store { i64 } %37, ptr %10, align 4
  %38 = extractvalue { { i64 }, i1 } %36, 1
  br i1 %38, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, 1
  %40 = ptrtoint ptr %39 to i64
  %41 = insertvalue { i64 } undef, i64 %40, 0
  %42 = insertvalue { { i64 }, i1 } undef, { i64 } %41, 0
  %43 = insertvalue { { i64 }, i1 } %42, i1 true, 1
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %44 = phi { { i64 }, i1 } [ %43, %_llgo_16 ], [ zeroinitializer, %_llgo_17 ]
  %45 = extractvalue { { i64 }, i1 } %44, 0
  store { i64 } %45, ptr %16, align 4
  %46 = extractvalue { { i64 }, i1 } %44, 1
  br i1 %46, label %_llgo_7, label %_llgo_9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"main.init$after"() {
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
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  store ptr %10, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17)
  store ptr %18, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/foo.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.Bar"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/compiler/cl/_testdata/foo.F"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
