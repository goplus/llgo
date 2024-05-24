; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/abi.Name", ptr, i64 }
%"github.com/goplus/llgo/internal/abi.Name" = type { ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global ptr null
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk" = linkonce global ptr null
@0 = private unnamed_addr constant [12 x i8] c"Foo: not ok\00", align 1
@1 = private unnamed_addr constant [12 x i8] c"Bar: not ok\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"F: not ok\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@8 = private unnamed_addr constant [5 x i8] c"main\00", align 1

define %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo() {
_llgo_0:
  %0 = alloca { i64 }, align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 8)
  %2 = getelementptr inbounds { i64 }, ptr %1, i32 0, i32 0
  store i64 1, ptr %2, align 4
  %3 = load { i64 }, ptr %1, align 4
  %4 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %5 = extractvalue { i64 } %3, 0
  %6 = inttoptr i64 %5 to ptr
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %4, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %6, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  ret %"github.com/goplus/llgo/internal/runtime.eface" %10
}

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
  %2 = call %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo()
  %3 = alloca { i64 }, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %3, i64 8)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 0
  %6 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
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
  %26 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()
  %27 = alloca { i64 }, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %27, i64 8)
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %26, 0
  %30 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %31 = icmp eq ptr %29, %30
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %26, 1
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
  store { i64 } %46, ptr %28, align 4
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
  %52 = getelementptr inbounds { i64 }, ptr %28, i32 0, i32 0
  %53 = load i64, ptr %52, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %54 = alloca { i64 }, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %54, i64 8)
  %56 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %56, 0
  %58 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %59 = icmp eq ptr %57, %58
  %60 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %56, 1
  %61 = ptrtoint ptr %60 to i64
  %62 = alloca { i64 }, align 8
  %63 = getelementptr inbounds { i64 }, ptr %62, i32 0, i32 0
  store i64 %61, ptr %63, align 4
  %64 = load { i64 }, ptr %62, align 4
  %65 = alloca { { i64 }, i1 }, align 8
  %66 = getelementptr inbounds { { i64 }, i1 }, ptr %65, i32 0, i32 0
  store { i64 } %64, ptr %66, align 4
  %67 = getelementptr inbounds { { i64 }, i1 }, ptr %65, i32 0, i32 1
  store i1 true, ptr %67, align 1
  %68 = load { { i64 }, i1 }, ptr %65, align 4
  %69 = alloca { { i64 }, i1 }, align 8
  %70 = getelementptr inbounds { { i64 }, i1 }, ptr %69, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %70, align 4
  %71 = getelementptr inbounds { { i64 }, i1 }, ptr %69, i32 0, i32 1
  store i1 false, ptr %71, align 1
  %72 = load { { i64 }, i1 }, ptr %69, align 4
  %73 = select i1 %59, { { i64 }, i1 } %68, { { i64 }, i1 } %72
  %74 = extractvalue { { i64 }, i1 } %73, 0
  store { i64 } %74, ptr %55, align 4
  %75 = extractvalue { { i64 }, i1 } %73, 1
  br i1 %75, label %_llgo_7, label %_llgo_9

_llgo_6:                                          ; preds = %_llgo_2
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @1, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 11, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %79)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_5
  %80 = getelementptr inbounds { i64 }, ptr %55, i32 0, i32 0
  %81 = load i64, ptr %80, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %81)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_5
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @2, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 9, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %85)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()

define void @"main.init$abi"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @3, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @4, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 0, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %9 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3, ptr %4, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %8, i1 false, i1 false)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @5, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 4, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %15 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %9, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 1, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 1, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %13, %"github.com/goplus/llgo/internal/runtime.Slice" %20)
  store ptr %21, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %22 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @6, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @7, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %27, ptr %28, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %32, i1 true, i1 false)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @8, ptr %35, align 8
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
  store ptr %45, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(i64, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1, i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)
