; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"v", align 1
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@2 = private unnamed_addr constant [11 x i8] c"Foo: not ok", align 1
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"V", align 1
@4 = private unnamed_addr constant [11 x i8] c"Bar: not ok", align 1
@5 = private unnamed_addr constant [9 x i8] c"F: not ok", align 1

define %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo() {
_llgo_0:
  %0 = alloca { i64 }, align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 8)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = load { i64 }, ptr %1, align 4
  %4 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %5 = extractvalue { i64 } %3, 0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %4, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 32
  store i8 %8, ptr %6, align 1
  %9 = inttoptr i64 %5 to ptr
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %4, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  ret %"github.com/goplus/llgo/internal/runtime.eface" %13
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/internal/foo.init"()
  call void @"main.init$after"()
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo()
  %3 = alloca { i64 }, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %3, i64 8)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 0
  %6 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %8 = getelementptr inbounds { i64 }, ptr %4, i32 0, i32 0
  %9 = load i64, ptr %8, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %10 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()
  %11 = alloca { i64 }, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %11, i64 8)
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 0
  %14 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @2, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 11, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %20 = getelementptr inbounds { i64 }, ptr %12, i32 0, i32 0
  %21 = load i64, ptr %20, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %22 = alloca { i64 }, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %22, i64 8)
  %24 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
  %25 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %24, 0
  %26 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 0
  store ptr @4, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 1
  store i64 11, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %31)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %32 = getelementptr inbounds { i64 }, ptr %23, i32 0, i32 0
  %33 = load i64, ptr %32, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_18
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @5, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 9, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %37)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 1
  %39 = ptrtoint ptr %38 to i64
  %40 = alloca { i64 }, align 8
  %41 = getelementptr inbounds { i64 }, ptr %40, i32 0, i32 0
  store i64 %39, ptr %41, align 4
  %42 = load { i64 }, ptr %40, align 4
  %43 = alloca { { i64 }, i1 }, align 8
  %44 = getelementptr inbounds { { i64 }, i1 }, ptr %43, i32 0, i32 0
  store { i64 } %42, ptr %44, align 4
  %45 = getelementptr inbounds { { i64 }, i1 }, ptr %43, i32 0, i32 1
  store i1 true, ptr %45, align 1
  %46 = load { { i64 }, i1 }, ptr %43, align 4
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  %47 = alloca { { i64 }, i1 }, align 8
  %48 = getelementptr inbounds { { i64 }, i1 }, ptr %47, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %48, align 4
  %49 = getelementptr inbounds { { i64 }, i1 }, ptr %47, i32 0, i32 1
  store i1 false, ptr %49, align 1
  %50 = load { { i64 }, i1 }, ptr %47, align 4
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %51 = phi { { i64 }, i1 } [ %46, %_llgo_10 ], [ %50, %_llgo_11 ]
  %52 = extractvalue { { i64 }, i1 } %51, 0
  store { i64 } %52, ptr %4, align 4
  %53 = extractvalue { { i64 }, i1 } %51, 1
  br i1 %53, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %54 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 1
  %55 = ptrtoint ptr %54 to i64
  %56 = alloca { i64 }, align 8
  %57 = getelementptr inbounds { i64 }, ptr %56, i32 0, i32 0
  store i64 %55, ptr %57, align 4
  %58 = load { i64 }, ptr %56, align 4
  %59 = alloca { { i64 }, i1 }, align 8
  %60 = getelementptr inbounds { { i64 }, i1 }, ptr %59, i32 0, i32 0
  store { i64 } %58, ptr %60, align 4
  %61 = getelementptr inbounds { { i64 }, i1 }, ptr %59, i32 0, i32 1
  store i1 true, ptr %61, align 1
  %62 = load { { i64 }, i1 }, ptr %59, align 4
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  %63 = alloca { { i64 }, i1 }, align 8
  %64 = getelementptr inbounds { { i64 }, i1 }, ptr %63, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %64, align 4
  %65 = getelementptr inbounds { { i64 }, i1 }, ptr %63, i32 0, i32 1
  store i1 false, ptr %65, align 1
  %66 = load { { i64 }, i1 }, ptr %63, align 4
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %67 = phi { { i64 }, i1 } [ %62, %_llgo_13 ], [ %66, %_llgo_14 ]
  %68 = extractvalue { { i64 }, i1 } %67, 0
  store { i64 } %68, ptr %12, align 4
  %69 = extractvalue { { i64 }, i1 } %67, 1
  br i1 %69, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %70 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %24, 1
  %71 = ptrtoint ptr %70 to i64
  %72 = alloca { i64 }, align 8
  %73 = getelementptr inbounds { i64 }, ptr %72, i32 0, i32 0
  store i64 %71, ptr %73, align 4
  %74 = load { i64 }, ptr %72, align 4
  %75 = alloca { { i64 }, i1 }, align 8
  %76 = getelementptr inbounds { { i64 }, i1 }, ptr %75, i32 0, i32 0
  store { i64 } %74, ptr %76, align 4
  %77 = getelementptr inbounds { { i64 }, i1 }, ptr %75, i32 0, i32 1
  store i1 true, ptr %77, align 1
  %78 = load { { i64 }, i1 }, ptr %75, align 4
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  %79 = alloca { { i64 }, i1 }, align 8
  %80 = getelementptr inbounds { { i64 }, i1 }, ptr %79, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %80, align 4
  %81 = getelementptr inbounds { { i64 }, i1 }, ptr %79, i32 0, i32 1
  store i1 false, ptr %81, align 1
  %82 = load { { i64 }, i1 }, ptr %79, align 4
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %83 = phi { { i64 }, i1 } [ %78, %_llgo_16 ], [ %82, %_llgo_17 ]
  %84 = extractvalue { { i64 }, i1 } %83, 0
  store { i64 } %84, ptr %23, align 4
  %85 = extractvalue { { i64 }, i1 } %83, 1
  br i1 %85, label %_llgo_7, label %_llgo_9
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %3, align 1
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @0, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %10, ptr %6, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %14, i1 false)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @1, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 4, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %21 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %20, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %15, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, i32 0, i32 0
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, i32 0, i32 1
  store i64 1, ptr %24, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, i32 0, i32 2
  store i64 1, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %22, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %19, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %26)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %27, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = or i8 %29, 32
  store i8 %30, ptr %28, align 1
  store ptr %27, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %31 = load ptr, ptr @_llgo_int, align 8
  %32 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @3, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 1, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %37, ptr %31, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %41, i1 false)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @1, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 4, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %48 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %47, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %42, ptr %48, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 0
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 1
  store i64 1, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 2
  store i64 1, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %46, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %53)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %54, i32 0, i32 6
  %56 = load i8, ptr %55, align 1
  %57 = or i8 %56, 32
  store i8 %57, ptr %55, align 1
  store ptr %54, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
