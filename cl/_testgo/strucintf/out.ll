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
  store ptr @0, ptr %17, align 8
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
  store ptr @1, ptr %29, align 8
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
  store ptr @2, ptr %35, align 8
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
  %47 = extractvalue { { i64 }, i1 } %46, 0
  %48 = extractvalue { { i64 }, i1 } %46, 1
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  %49 = alloca { { i64 }, i1 }, align 8
  %50 = getelementptr inbounds { { i64 }, i1 }, ptr %49, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %50, align 4
  %51 = getelementptr inbounds { { i64 }, i1 }, ptr %49, i32 0, i32 1
  store i1 false, ptr %51, align 1
  %52 = load { { i64 }, i1 }, ptr %49, align 4
  %53 = extractvalue { { i64 }, i1 } %52, 0
  %54 = extractvalue { { i64 }, i1 } %52, 1
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %55 = phi i64 [ %47, %_llgo_10 ], [ %53, %_llgo_11 ]
  %56 = phi i1 [ %48, %_llgo_10 ], [ %54, %_llgo_11 ]
  %57 = alloca { { i64 }, i1 }, align 8
  %58 = getelementptr inbounds { { i64 }, i1 }, ptr %57, i32 0, i32 0
  store i64 %55, ptr %58, align 4
  %59 = getelementptr inbounds { { i64 }, i1 }, ptr %57, i32 0, i32 1
  store i1 %56, ptr %59, align 1
  %60 = load { { i64 }, i1 }, ptr %57, align 4
  %61 = extractvalue { { i64 }, i1 } %60, 0
  store { i64 } %61, ptr %4, align 4
  %62 = extractvalue { { i64 }, i1 } %60, 1
  br i1 %62, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %10, 1
  %64 = ptrtoint ptr %63 to i64
  %65 = alloca { i64 }, align 8
  %66 = getelementptr inbounds { i64 }, ptr %65, i32 0, i32 0
  store i64 %64, ptr %66, align 4
  %67 = load { i64 }, ptr %65, align 4
  %68 = alloca { { i64 }, i1 }, align 8
  %69 = getelementptr inbounds { { i64 }, i1 }, ptr %68, i32 0, i32 0
  store { i64 } %67, ptr %69, align 4
  %70 = getelementptr inbounds { { i64 }, i1 }, ptr %68, i32 0, i32 1
  store i1 true, ptr %70, align 1
  %71 = load { { i64 }, i1 }, ptr %68, align 4
  %72 = extractvalue { { i64 }, i1 } %71, 0
  %73 = extractvalue { { i64 }, i1 } %71, 1
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  %74 = alloca { { i64 }, i1 }, align 8
  %75 = getelementptr inbounds { { i64 }, i1 }, ptr %74, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %75, align 4
  %76 = getelementptr inbounds { { i64 }, i1 }, ptr %74, i32 0, i32 1
  store i1 false, ptr %76, align 1
  %77 = load { { i64 }, i1 }, ptr %74, align 4
  %78 = extractvalue { { i64 }, i1 } %77, 0
  %79 = extractvalue { { i64 }, i1 } %77, 1
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %80 = phi i64 [ %72, %_llgo_13 ], [ %78, %_llgo_14 ]
  %81 = phi i1 [ %73, %_llgo_13 ], [ %79, %_llgo_14 ]
  %82 = alloca { { i64 }, i1 }, align 8
  %83 = getelementptr inbounds { { i64 }, i1 }, ptr %82, i32 0, i32 0
  store i64 %80, ptr %83, align 4
  %84 = getelementptr inbounds { { i64 }, i1 }, ptr %82, i32 0, i32 1
  store i1 %81, ptr %84, align 1
  %85 = load { { i64 }, i1 }, ptr %82, align 4
  %86 = extractvalue { { i64 }, i1 } %85, 0
  store { i64 } %86, ptr %12, align 4
  %87 = extractvalue { { i64 }, i1 } %85, 1
  br i1 %87, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %88 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %24, 1
  %89 = ptrtoint ptr %88 to i64
  %90 = alloca { i64 }, align 8
  %91 = getelementptr inbounds { i64 }, ptr %90, i32 0, i32 0
  store i64 %89, ptr %91, align 4
  %92 = load { i64 }, ptr %90, align 4
  %93 = alloca { { i64 }, i1 }, align 8
  %94 = getelementptr inbounds { { i64 }, i1 }, ptr %93, i32 0, i32 0
  store { i64 } %92, ptr %94, align 4
  %95 = getelementptr inbounds { { i64 }, i1 }, ptr %93, i32 0, i32 1
  store i1 true, ptr %95, align 1
  %96 = load { { i64 }, i1 }, ptr %93, align 4
  %97 = extractvalue { { i64 }, i1 } %96, 0
  %98 = extractvalue { { i64 }, i1 } %96, 1
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  %99 = alloca { { i64 }, i1 }, align 8
  %100 = getelementptr inbounds { { i64 }, i1 }, ptr %99, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %100, align 4
  %101 = getelementptr inbounds { { i64 }, i1 }, ptr %99, i32 0, i32 1
  store i1 false, ptr %101, align 1
  %102 = load { { i64 }, i1 }, ptr %99, align 4
  %103 = extractvalue { { i64 }, i1 } %102, 0
  %104 = extractvalue { { i64 }, i1 } %102, 1
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %105 = phi i64 [ %97, %_llgo_16 ], [ %103, %_llgo_17 ]
  %106 = phi i1 [ %98, %_llgo_16 ], [ %104, %_llgo_17 ]
  %107 = alloca { { i64 }, i1 }, align 8
  %108 = getelementptr inbounds { { i64 }, i1 }, ptr %107, i32 0, i32 0
  store i64 %105, ptr %108, align 4
  %109 = getelementptr inbounds { { i64 }, i1 }, ptr %107, i32 0, i32 1
  store i1 %106, ptr %109, align 1
  %110 = load { { i64 }, i1 }, ptr %107, align 4
  %111 = extractvalue { { i64 }, i1 } %110, 0
  store { i64 } %111, ptr %23, align 4
  %112 = extractvalue { { i64 }, i1 } %110, 1
  br i1 %112, label %_llgo_7, label %_llgo_9
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
  %14 = call %"github.com/goplus/llgo/internal/abi.Name" @"github.com/goplus/llgo/internal/runtime.NewPkgName"(%"github.com/goplus/llgo/internal/runtime.String" %13)
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %16 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %9, ptr %16, align 8
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 0
  store ptr %15, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 1
  store i64 1, ptr %19, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 2
  store i64 1, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/abi.Name" %14, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %21)
  store ptr %22, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %23 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @6, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 1, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @7, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %28, ptr %29, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %33, i1 true, i1 false)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @8, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 4, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = call %"github.com/goplus/llgo/internal/abi.Name" @"github.com/goplus/llgo/internal/runtime.NewPkgName"(%"github.com/goplus/llgo/internal/runtime.String" %38)
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %41 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %40, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %34, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 1, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/abi.Name" %39, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  store ptr %47, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/abi.Name", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1, i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare %"github.com/goplus/llgo/internal/abi.Name" @"github.com/goplus/llgo/internal/runtime.NewPkgName"(%"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)
