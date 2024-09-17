; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
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

define %"github.com/goplus/llgo/internal/runtime.eface" @main.Foo() {
_llgo_0:
  %0 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store i64 1, ptr %1, align 4
  %2 = load { i64 }, ptr %0, align 4
  %3 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %4 = extractvalue { i64 } %2, 0
  %5 = inttoptr i64 %4 to ptr
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 0
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %6, align 8
  ret %"github.com/goplus/llgo/internal/runtime.eface" %9
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
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 0
  %5 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_10, label %_llgo_11

_llgo_1:                                          ; preds = %_llgo_12
  %7 = getelementptr inbounds { i64 }, ptr %3, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %9 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()
  %10 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, 0
  %12 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_13, label %_llgo_14

_llgo_3:                                          ; preds = %_llgo_12
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @2, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 11, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_15
  %18 = getelementptr inbounds { i64 }, ptr %10, i32 0, i32 0
  %19 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_6, %_llgo_4
  %20 = alloca { i64 }, align 8
  call void @llvm.memset(ptr %20, i8 0, i64 8, i1 false)
  %21 = call %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %21, 0
  %23 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %_llgo_16, label %_llgo_17

_llgo_6:                                          ; preds = %_llgo_15
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @4, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 11, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_5

_llgo_7:                                          ; preds = %_llgo_18
  %29 = getelementptr inbounds { i64 }, ptr %20, i32 0, i32 0
  %30 = load i64, ptr %29, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret i32 0

_llgo_9:                                          ; preds = %_llgo_18
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 0
  store ptr @5, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %31, i32 0, i32 1
  store i64 9, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %34)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_0
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %2, 1
  %36 = ptrtoint ptr %35 to i64
  %37 = alloca { i64 }, align 8
  %38 = getelementptr inbounds { i64 }, ptr %37, i32 0, i32 0
  store i64 %36, ptr %38, align 4
  %39 = load { i64 }, ptr %37, align 4
  %40 = alloca { { i64 }, i1 }, align 8
  %41 = getelementptr inbounds { { i64 }, i1 }, ptr %40, i32 0, i32 0
  store { i64 } %39, ptr %41, align 4
  %42 = getelementptr inbounds { { i64 }, i1 }, ptr %40, i32 0, i32 1
  store i1 true, ptr %42, align 1
  %43 = load { { i64 }, i1 }, ptr %40, align 4
  br label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_0
  %44 = alloca { { i64 }, i1 }, align 8
  %45 = getelementptr inbounds { { i64 }, i1 }, ptr %44, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %45, align 4
  %46 = getelementptr inbounds { { i64 }, i1 }, ptr %44, i32 0, i32 1
  store i1 false, ptr %46, align 1
  %47 = load { { i64 }, i1 }, ptr %44, align 4
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %48 = phi { { i64 }, i1 } [ %43, %_llgo_10 ], [ %47, %_llgo_11 ]
  %49 = extractvalue { { i64 }, i1 } %48, 0
  store { i64 } %49, ptr %3, align 4
  %50 = extractvalue { { i64 }, i1 } %48, 1
  br i1 %50, label %_llgo_1, label %_llgo_3

_llgo_13:                                         ; preds = %_llgo_2
  %51 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %9, 1
  %52 = ptrtoint ptr %51 to i64
  %53 = alloca { i64 }, align 8
  %54 = getelementptr inbounds { i64 }, ptr %53, i32 0, i32 0
  store i64 %52, ptr %54, align 4
  %55 = load { i64 }, ptr %53, align 4
  %56 = alloca { { i64 }, i1 }, align 8
  %57 = getelementptr inbounds { { i64 }, i1 }, ptr %56, i32 0, i32 0
  store { i64 } %55, ptr %57, align 4
  %58 = getelementptr inbounds { { i64 }, i1 }, ptr %56, i32 0, i32 1
  store i1 true, ptr %58, align 1
  %59 = load { { i64 }, i1 }, ptr %56, align 4
  br label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_2
  %60 = alloca { { i64 }, i1 }, align 8
  %61 = getelementptr inbounds { { i64 }, i1 }, ptr %60, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %61, align 4
  %62 = getelementptr inbounds { { i64 }, i1 }, ptr %60, i32 0, i32 1
  store i1 false, ptr %62, align 1
  %63 = load { { i64 }, i1 }, ptr %60, align 4
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_13
  %64 = phi { { i64 }, i1 } [ %59, %_llgo_13 ], [ %63, %_llgo_14 ]
  %65 = extractvalue { { i64 }, i1 } %64, 0
  store { i64 } %65, ptr %10, align 4
  %66 = extractvalue { { i64 }, i1 } %64, 1
  br i1 %66, label %_llgo_4, label %_llgo_6

_llgo_16:                                         ; preds = %_llgo_5
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %21, 1
  %68 = ptrtoint ptr %67 to i64
  %69 = alloca { i64 }, align 8
  %70 = getelementptr inbounds { i64 }, ptr %69, i32 0, i32 0
  store i64 %68, ptr %70, align 4
  %71 = load { i64 }, ptr %69, align 4
  %72 = alloca { { i64 }, i1 }, align 8
  %73 = getelementptr inbounds { { i64 }, i1 }, ptr %72, i32 0, i32 0
  store { i64 } %71, ptr %73, align 4
  %74 = getelementptr inbounds { { i64 }, i1 }, ptr %72, i32 0, i32 1
  store i1 true, ptr %74, align 1
  %75 = load { { i64 }, i1 }, ptr %72, align 4
  br label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_5
  %76 = alloca { { i64 }, i1 }, align 8
  %77 = getelementptr inbounds { { i64 }, i1 }, ptr %76, i32 0, i32 0
  store { i64 } zeroinitializer, ptr %77, align 4
  %78 = getelementptr inbounds { { i64 }, i1 }, ptr %76, i32 0, i32 1
  store i1 false, ptr %78, align 1
  %79 = load { { i64 }, i1 }, ptr %76, align 4
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %80 = phi { { i64 }, i1 } [ %75, %_llgo_16 ], [ %79, %_llgo_17 ]
  %81 = extractvalue { { i64 }, i1 } %80, 0
  store { i64 } %81, ptr %20, align 4
  %82 = extractvalue { { i64 }, i1 } %80, 1
  br i1 %82, label %_llgo_7, label %_llgo_9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %9 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3, ptr %8, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %7, i1 false)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @1, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 4, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
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
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %13, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %20)
  store ptr %21, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %22 = load ptr, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @3, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 0
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 1
  store i64 0, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %33 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %27, ptr %32, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %31, i1 false)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @1, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 4, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
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
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %37, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %44)
  store ptr %45, ptr @"_llgo_struct$K-dZ9QotZfVPz2a0YdRa9vmZUuDXPTqZOlMShKEDJtk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/cl/internal/foo.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.Bar"()

declare %"github.com/goplus/llgo/internal/runtime.eface" @"github.com/goplus/llgo/cl/internal/foo.F"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
