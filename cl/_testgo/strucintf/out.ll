; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/abi.Name", ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Name" = type { ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = global ptr null
@0 = private unnamed_addr constant [12 x i8] c"Bar: not ok\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"F: not ok\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@7 = private unnamed_addr constant [5 x i8] c"main\00", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/internal/foo.init"()
  call void @"main.init$abi"()
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()
  %3 = alloca { i64 }, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %3, i64 8)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 0
  %6 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %7 = icmp eq ptr %5, %6
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 1
  %9 = ptrtoint ptr %8 to i64
  %10 = alloca { i64 }, align 8
  %11 = getelementptr inbounds { i64 }, ptr %10, i32 0, i32 0
  store i64 %9, ptr %11, align 4
  %12 = load { i64 }, ptr %10, align 4
  %13 = alloca { { i64 }, i1 }, align 8
  %14 = getelementptr inbounds { { i64 }, i1 }, ptr %13, i32 0, i32 0
  store { i64 } %12, ptr %14, align 4
  %15 = getelementptr inbounds { { i64 }, i1 }, ptr %13, i32 0, i32 1
  store i1 true, ptr %15, align 1
  %16 = load { { i64 }, i1 }, ptr %13, align 4
  %17 = alloca { { i64 }, i1 }, align 8
  %18 = getelementptr inbounds { { i64 }, i1 }, ptr %17, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %18, align 4
  %19 = getelementptr inbounds { { i64 }, i1 }, ptr %17, i32 0, i32 1
  store i1 false, ptr %19, align 1
  %20 = load { { i64 }, i1 }, ptr %17, align 4
  %21 = select i1 %7, { { i64 }, i1 } %16, { { i64 }, i1 } %20
  %22 = extractvalue { { i64 }, i1 } %21, 0
  store { i64 } %22, ptr %4, align 4
  %23 = extractvalue { { i64 }, i1 } %21, 1
  br i1 %23, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %24 = getelementptr inbounds { i64 }, ptr %4, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %26 = alloca { i64 }, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %26, i64 8)
  %28 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %28, 0
  %30 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %31 = icmp eq ptr %29, %30
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %28, 1
  %33 = ptrtoint ptr %32 to i64
  %34 = alloca { i64 }, align 8
  %35 = getelementptr inbounds { i64 }, ptr %34, i32 0, i32 0
  store i64 %33, ptr %35, align 4
  %36 = load { i64 }, ptr %34, align 4
  %37 = alloca { { i64 }, i1 }, align 8
  %38 = getelementptr inbounds { { i64 }, i1 }, ptr %37, i32 0, i32 0
  store { i64 } %36, ptr %38, align 4
  %39 = getelementptr inbounds { { i64 }, i1 }, ptr %37, i32 0, i32 1
  store i1 true, ptr %39, align 1
  %40 = load { { i64 }, i1 }, ptr %37, align 4
  %41 = alloca { { i64 }, i1 }, align 8
  %42 = getelementptr inbounds { { i64 }, i1 }, ptr %41, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %42, align 4
  %43 = getelementptr inbounds { { i64 }, i1 }, ptr %41, i32 0, i32 1
  store i1 false, ptr %43, align 1
  %44 = load { { i64 }, i1 }, ptr %41, align 4
  %45 = select i1 %31, { { i64 }, i1 } %40, { { i64 }, i1 } %44
  %46 = extractvalue { { i64 }, i1 } %45, 0
  store { i64 } %46, ptr %27, align 4
  %47 = extractvalue { { i64 }, i1 } %45, 1
  br i1 %47, label %_llgo_4, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_0
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr @0, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 11, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  %52 = getelementptr inbounds { i64 }, ptr %27, i32 0, i32 0
  %53 = load i64, ptr %52, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  ret i32 0

_llgo_6:                                          ; preds = %_llgo_2
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @1, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 9, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %57)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5
}

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

define void @"main.init$abi"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @2, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @3, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %5, ptr %6, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 true, i1 false)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @4, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 4, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %17 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %16, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %11, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, i32 0, i32 0
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, i32 0, i32 1
  store i64 1, ptr %20, align 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, i32 0, i32 2
  store i64 1, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %15, %"github.com/goplus/llgo/internal/runtime.Slice" %22)
  store ptr %23, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @5, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @6, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %27, ptr %28, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %32, i1 false, i1 false)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @7, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 4, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %39 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %38, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %33, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 0
  store ptr %38, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 1
  store i64 1, ptr %42, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 2
  store i64 1, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %37, %"github.com/goplus/llgo/internal/runtime.Slice" %44)
  store ptr %45, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(i64, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1, i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)
